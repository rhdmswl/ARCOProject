package com.collection.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ImageVO {

	private String file_name;
	private String content_type;
	private byte[] image_data;
	private String user_id;
}
