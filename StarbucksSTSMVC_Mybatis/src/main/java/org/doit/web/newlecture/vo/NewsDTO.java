package org.doit.web.newlecture.vo;

import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class NewsDTO {
	
	private int n_id;
	private String n_image;
	private String n_category;
	private String n_content;
	private String n_ctimage;
	private Date n_date;
	
	  private CommonsMultipartFile file; 
	   
	   public CommonsMultipartFile getFile() {
		return file;
	   }
	   public void setFile(CommonsMultipartFile file) {
		this.file = file;
	   }
	   
	   private CommonsMultipartFile file2; 
	   
		public CommonsMultipartFile getFile2() {
			return file2;
		}
		public void setFile2(CommonsMultipartFile file2) {
			this.file2 = file2;
		}
		
	public NewsDTO() {
		super();
	}

	public NewsDTO(int n_id, String n_image, String n_category, String n_content, String n_ctimage, Date n_date) {
		super();
		this.n_id = n_id;
		this.n_image = n_image;
		this.n_category = n_category;
		this.n_content = n_content;
		this.n_ctimage = n_ctimage;
		this.n_date = n_date;
	}

	public int getN_id() {
		return n_id;
	}

	public void setN_id(int n_id) {
		this.n_id = n_id;
	}

	public String getN_image() {
		return n_image;
	}

	public void setN_image(String n_image) {
		this.n_image = n_image;
	}

	public String getN_category() {
		return n_category;
	}

	public void setN_category(String n_category) {
		this.n_category = n_category;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_ctimage() {
		return n_ctimage;
	}

	public void setN_ctimage(String n_ctimage) {
		this.n_ctimage = n_ctimage;
	}

	public Date getN_date() {
		return n_date;
	}

	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	
	/*
	 * public String getFilesrc() { return filesrc; }
	 * 
	 * public void setFilesrc(String filesrc) { this.filesrc = filesrc; }
	 */

	
	
	
	
	
	
	

}
