package com.offersmodule.model;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="OFFERS_TABLE")
public class Offertable implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name ="OFFERID")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long offerid;
	@Column(name="OFFER_NAME")
	private String offerName;
	@Column(name="CONTENT")
	private String content;
	/*
	 * @Column(name="START_DATE") // @Temporal(TemporalType.TIMESTAMP) private
	 * String startDate;
	 * 
	 * @Column(name="END_DATE") //@Temporal(TemporalType.TIMESTAMP) private String
	 * endDate;
	 */
	@Column(name="START_DATE")
	@Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern ="MM/dd/yyyy HH:mm aa")
	//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	private Date startDate;
	
	@Column(name="END_DATE")
	@Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern ="MM/dd/yyyy HH:mm aa")
	//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	private Date endDate;
	
	@Column(name="USERTYPE")
	private String usertype;
	@Column(name="SHORT_OFFER")
	private String shortOffer;
	@Column(name="LONG_OFFER")
	private String longOffer;
	@Column(name="IMAGE_URL")
	private String imageurl;
	@Column(name="LOGO_URL")
	private String logourl;
	@Column(name="STATUS")
	private String status;
	@Column(name="CREATEDBY")
	private String createdby; 
	@Column(name="CREATE_DATE")
    @CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdate = new java.sql.Date(new java.util.Date().getTime());
	
	@Column(name="MODIFIED_DATE")
	@Temporal(TemporalType.TIMESTAMP)
	@CreationTimestamp
	private Date modifieddate = new java.sql.Date(new java.util.Date().getTime());;
	
	@Column(name="MODIFYBY")
	private String modifyby;
	

	/*
	 * @Lob private byte[] imagefile;
	 * 
	 * @Lob private byte[] logofile;
	 */
	public Offertable() {
		super();
	}
	

	public Offertable(long offerid, String offerName, String content, Date startDate, Date endDate,
			String usertype, String shortOffer, String longOffer, String imageurl, String logourl, String status,
			String createdby, Date createdate, Date modifieddate, String modifyby) {
		super();
		this.offerid = offerid;
		this.offerName = offerName;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.usertype = usertype;
		this.shortOffer = shortOffer;
		this.longOffer = longOffer;
		this.imageurl = imageurl;
		this.logourl = logourl;
		this.status = status;
		this.createdby = createdby;
		this.createdate = createdate;
		this.modifieddate = modifieddate;
		this.modifyby = modifyby;
	}


	
	public String getUsertype() {
		return usertype;
	}


	public void setUsertype(String usertype) {
		this.usertype = usertype;
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


	public long getOfferid() {
		return offerid;
	}

	public void setOfferid(long offerid) {
		this.offerid = offerid;
	}

	
	public String getOfferName() {
		return this.offerName;
	}

	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date date) {
		this.endDate = date;
	}


	public String getShortOffer() {
		return this.shortOffer;
	}

	public void setShortOffer(String shortOffer) {
		this.shortOffer = shortOffer;
	}

	public String getLongOffer() {
		return this.longOffer;
	}

	public void setLongOffer(String longOffer) {
		this.longOffer = longOffer;
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


	@Override
	public String toString() {
		return "Offertable [offerid=" + offerid + ", offerName=" + offerName + ", content=" + content + ", startDate="
				+ startDate + ", endDate=" + endDate + ", usertype=" + usertype + ", shortOffer=" + shortOffer
				+ ", longOffer=" + longOffer + ", imageurl=" + imageurl + ", logourl=" + logourl + ", status=" + status
				+ ", createdby=" + createdby + ", createdate=" + createdate + ", modifieddate=" + modifieddate
				+ ", modifyby=" + modifyby + "]";
	}

	



}
