package com.jeff.util;

import java.util.UUID;

/**
 * Éú³É¼¤»îÂë
 * @author Mr.sorrow
 */
public class UUIDUtils {
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "")+UUID.randomUUID().toString().replace("-", "");
	}
}
