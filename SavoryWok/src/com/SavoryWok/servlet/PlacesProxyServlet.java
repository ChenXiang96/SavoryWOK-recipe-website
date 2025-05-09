package com.SavoryWok.servlet;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;

public class PlacesProxyServlet extends HttpServlet {
    private static final String API_KEY = "AIzaSyD265wFZtTr2apP3qyfn_QLIDfw5rgMRyc";
    private static final String BASE_URL = "https://places.googleapis.com/v1/places/";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handleRequest("search", request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    	String action = request.getParameter("action");
        if ("photo".equals(action)) {
            handlePhotoRequest(request, response);
        } else {
            handleRequest("details", request, response);
        }

    }

    private void handleRequest(String action, HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        resp.setContentType("application/json; charset=utf-8");
        resp.setCharacterEncoding("UTF-8");

        try {
            HttpURLConnection conn = buildConnection(action, req);
            processResponse(conn, resp);
        } catch (Exception e) {
            sendError(resp, 500, "Proxy service exception: " + (e.getMessage() != null ? e.getMessage() : e.toString()));
        }
    }
    
    private void handlePhotoRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String photoName = req.getParameter("name");
        if (photoName == null || photoName.isEmpty()) {
            sendError(resp, 400, "Missing photo name parameter");
            return;
        }

        try {
           
            String decodedName = URLDecoder.decode(photoName, StandardCharsets.UTF_8.name());
            System.out.println("[DEBUG] Decoded photo name: " + decodedName); 
            
            String apiUrl = "https://places.googleapis.com/v1/" + decodedName + "/media?key=" + API_KEY + "&maxWidthPx=400";
            System.out.println("[DEBUG] Google API request address: " + apiUrl);
            
            HttpURLConnection conn = (HttpURLConnection) new URL(apiUrl).openConnection();
            conn.setInstanceFollowRedirects(false);
            
           
            int status = conn.getResponseCode();
            if (status >= 300 && status < 400) {
                String location = conn.getHeaderField("Location");
                System.out.println("[DEBUG] Image redirection address: " + location); 
                resp.sendRedirect(location);
            } else {
                sendError(resp, status, "Google API Incorrect: " + conn.getResponseMessage());
            }
        } catch (Exception e) {
            sendError(resp, 500, "Internal server error: " + e.getMessage());
        }
    }



    private HttpURLConnection buildConnection(String action, HttpServletRequest req) throws Exception {
        URL apiUrl = new URL(buildApiUrl(action, req));
        HttpURLConnection conn = (HttpURLConnection) apiUrl.openConnection();
        conn.setRequestMethod(action.equals("search") ? "POST" : "GET");
        if ("details".equals(action)) {
        
        	conn.setRequestProperty("X-Goog-FieldMask", "displayName.text,formattedAddress,rating,userRatingCount,photos");
        } else {
        	
        	conn.setRequestProperty("X-Goog-FieldMask", "places.id,places.displayName,places.formattedAddress,places.location,places.photos");
        	
        }
        
    
        conn.setRequestProperty("Accept-Language", "en-US,en;q=0.9");
        conn.setRequestProperty("X-Goog-Language", "en"); 
        conn.setRequestProperty("X-Goog-Api-Key", API_KEY);
       
        conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        conn.setRequestProperty("Accept-Language", "en-US"); 
        conn.setRequestProperty("Referer", "http://localhost:8080");
        conn.setRequestProperty("Origin", "http://localhost:8080");
        conn.setRequestProperty("Content-Type", "application/json");

        if (action.equals("search")) {
            conn.setDoOutput(true);
            try (OutputStream os = conn.getOutputStream()) {
                os.write(IOUtils.toByteArray(req.getInputStream()));
            }
        }
        return conn;
    }

    private String buildApiUrl(String action, HttpServletRequest req) throws Exception {
        if (action.equals("details")) {
         
            String placeId = req.getParameter("placeId");
            System.out.println("[DEBUG] Original placeId parameter value: " + placeId);
            
            if (placeId == null || placeId.isEmpty()) {
                throw new IllegalArgumentException("Missing placeId parameter");
            }
            return BASE_URL + placeId; 
        }
        return BASE_URL + ":searchText";
    }



    private void processResponse(HttpURLConnection conn, HttpServletResponse resp) throws IOException {
        int status = conn.getResponseCode();
        try (InputStream is = status >= 400 ? conn.getErrorStream() : conn.getInputStream();
             BufferedReader br = new BufferedReader(new InputStreamReader(is))) {
            
            StringBuilder responseBody = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                responseBody.append(line);
            }
            
            resp.setStatus(status);
            resp.getWriter().write(responseBody.toString());
        }
    }

    private void sendError(HttpServletResponse resp, int code, String message) throws IOException {
        resp.setStatus(code);
        resp.getWriter().write(String.format("{\"error\":{\"code\":%d,\"message\":\"%s\"}}", code, message));
    }
}
