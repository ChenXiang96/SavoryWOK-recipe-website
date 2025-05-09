package com.SavoryWok.utils;

import java.util.UUID;

/**
 *
 */

public class UUIDUtils {
	/**
	 *
	 * @return
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
}
