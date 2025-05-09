<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Dashboard | Savory Wok</title>
<style>

body {
    background: 

        linear-gradient(
            to bottom, 
            rgba(52, 152, 219, 0.1) 0%, 
            rgba(52, 152, 219, 0) 200px
        ),
  
        radial-gradient(
            circle at 90% 10%,
            rgba(236, 240, 243, 0.8) 20%,
            rgba(245, 247, 250, 0.6) 60%
        ),
  
        repeating-linear-gradient(
            45deg,
            transparent,
            transparent 15px,
            rgba(52, 152, 219, 0.05) 15px,
            rgba(52, 152, 219, 0.05) 30px
        ),
        #f8fafc; 
    
    background-attachment: fixed;
}


.card {
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(6px);
    border: 1px solid rgba(52, 152, 219, 0.1);
}


body::before {
    content: '';
    position: fixed;
    top: -50vh;
    right: -50vw;
    width: 100vw;
    height: 100vh;
    background: 
        radial-gradient(
            circle at 70% 30%,
            rgba(52, 152, 219, 0.08) 0%,
            transparent 60%
        );
    z-index: -1;
    animation: float 20s infinite linear;
}

@keyframes float {
    0% { transform: translate(0, 0) rotate(0deg); }
    25% { transform: translate(-5%, 5%) rotate(2deg); }
    50% { transform: translate(5%, -3%) rotate(-2deg); }
    75% { transform: translate(-3%, 7%) rotate(1deg); }
    100% { transform: translate(0, 0) rotate(0deg); }
}


.dashboard-header {
    text-align: center;
    margin-bottom: 40px;
    position: relative;
    padding: 20px 0;
}

.dashboard-header h1 {
    color: #2c3e50;
    font-size: 2.5rem;
    font-weight: 600;
    letter-spacing: 1px;
    margin: 0;
    display: inline-block;
    padding: 0 20px;
    background: linear-gradient(45deg, #3498db, #2ecc71);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    border-bottom: 3px solid #3498db;
}


.dashboard-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
    max-width: 1200px;
    margin: 0 auto;
}


.card {
    background: white;
    border-radius: 12px;
    padding: 25px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

.card h2 {
    color: #34495e;
    font-size: 1.3rem;
    margin: 0 0 15px;
    display: flex;
    align-items: center;
}

.card h2 i {
    margin-right: 10px;
    color: #3498db;
}


.quick-actions {
    margin-top: 30px;
    text-align: center;
}

.btn {
    display: inline-flex;
    align-items: center;
    padding: 12px 25px;
    background: #3498db;
    color: white;
    border-radius: 8px;
    text-decoration: none;
    margin: 0 10px;
    transition: background 0.3s;
}

.btn i {
    margin-right: 8px;
}

.btn:hover {
    background: #2980b9;
}

.dashboard-header {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 30px 0 20px;
}
.dashboard-header h1 {
   
    border-bottom: none;
    padding: 0;          
    font-size: 15px;
    background:#FF6B00 60%; 
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    text-shadow: 0 2px 4px rgba(255,165,0,0.15);
    margin-right:20px;
  
}
.dashboard-logo {
    max-width: 300px;   
    margin-bottom: 15px;
    filter: drop-shadow(0 2px 4px rgba(0,0,0,0.1)); 
    margin-right:20px;
    
}
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="dashboard-header">
    <img src="${pageContext.request.contextPath}/images/logo.png" 
         alt="Savory Wok Logo"
         class="dashboard-logo">
        <h1>Add, Edit, Publish – All in One Place</h1>
    </div>

    <div class="dashboard-cards">
        <div class="card">
            <h2><i class="fas fa-chart-line"></i>Recipe Data Overview</h2>
            <p>Total Number of Recipes：650</p>
            <p>Total Number of Recipe Categories：56</p>
           
        </div>

        <div class="card">
            <h2><i class="fas fa-shopping-cart"></i>Posted 'Moments' Overview</h2>
            <p>Number of Posts：45</p>
            <p>Average Comments per Post：5</p>
        </div>

        <div class="card">
            <h2><i class="fas fa-users"></i>User Overview</h2>
            <p>Number of Registered Users：620</p>
            <p>New Users This Month：52</p>
           
        </div>
    </div>


</body>
</html>
