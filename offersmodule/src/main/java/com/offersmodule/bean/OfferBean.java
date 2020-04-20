package com.offersmodule.bean;

import java.util.Date;



public class OfferBean {
	

	private long offerid;

	private String offerName;

	private String content;

	private String startDate;

	private String endDate;
	private String usertype;
	
	private String shortOffer;
	
	private String longOffer;
	
	private String imageurl;

	private String logourl;

	public long getOfferid() {
		return offerid;
	}
	public void setOfferid(long offerid) {
		this.offerid = offerid;
	}
	public String getOfferName() {
		return offerName;
	}
	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getShortOffer() {
		return shortOffer;
	}
	public void setShortOffer(String shortOffer) {
		this.shortOffer = shortOffer;
	}
	public String getLongOffer() {
		return longOffer;
	}
	public void setLongOffer(String longOffer) {
		this.longOffer = longOffer;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getLogourl() {
		return logourl;
	}
	public void setLogourl(String logourl) {
		this.logourl = logourl;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreatedby() {
		return createdby;
	}
	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public Date getModifieddate() {
		return modifieddate;
	}
	public void setModifieddate(Date modifieddate) {
		this.modifieddate = modifieddate;
	}
	public String getModifyby() {
		return modifyby;
	}
	public void setModifyby(String modifyby) {
		this.modifyby = modifyby;
	}
	
	private String status;
	
	private String createdby; 
	

	private Date createdate;
	
	
	private Date modifieddate;
	private String modifyby;

	@Override
	public String toString() {
		return "offerBean [offerid=" + offerid + ", offerName=" + offerName + ", content=" + content + ", startDate="
				+ startDate + ", endDate=" + endDate + ", usertype=" + usertype + ", shortOffer=" + shortOffer
				+ ", longOffer=" + longOffer + ", imageurl=" + imageurl + ", logourl=" + logourl + ", status=" + status
				+ ", createdby=" + createdby + ", createdate=" + createdate + ", modifieddate=" + modifieddate
				+ ", modifyby=" + modifyby + "]";
	}
	
	

}
