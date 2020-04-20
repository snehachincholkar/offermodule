package com.offersmodule.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import com.offersmodule.bean.OfferBean;
import com.offersmodule.model.Offertable;
import com.offersmodule.repository.Offerrepository;
import com.offersmodule.service.Offerservice;
@Controller
public class OfferController {

	private static final Logger logger = LoggerFactory.getLogger(OfferController.class);

	@Autowired
	Offerrepository offerrepository;

	@Autowired
	Offerservice offerservice;

	@Autowired
	HttpServletRequest request;

	@RequestMapping("/")
	public ModelAndView show() {
		return new ModelAndView("index");
	}

	@RequestMapping("/start")
	public ModelAndView showlogin(@ModelAttribute("offer") Offertable offer) {
		ModelAndView mv = new ModelAndView("offerupload");
		mv.addObject("offer", offer);
		//System.out.println(offer.getStartDate());
	
		return mv;
	}

	@PostMapping("/upload")
	public ModelAndView showits(@ModelAttribute("offer") OfferBean offer, BindingResult br,
			RedirectAttributes redirectAttrs, @RequestParam("imageurl") MultipartFile imageurl,
			@RequestParam("logourl") MultipartFile logourl) throws ServletException, IOException, SQLException, ParseException {
		
		System.out.println("inside showits");
		ModelAndView mv1 = null;
		mv1 = new ModelAndView("previeweform");
		logger.info("Could not determine file type.");

		try {
			
			String logfilename = imageurl.getOriginalFilename().split("\\.")[0];
			System.err.println(logfilename.trim());
			String logofile = StringUtils.cleanPath(
			logfilename.trim() + System.currentTimeMillis() + "." + logourl.getOriginalFilename().split("\\.")[1]);
			@SuppressWarnings("unused")
			Path logopath = Paths.get(logofile);
			byte[] bytes1 = logourl.getBytes();
			String logourldeatails = ServletUriComponentsBuilder.fromCurrentContextPath().path("/images/").path(logofile)
					.toUriString();
			ServletContext servletContext1 = request.getServletContext();
			String contextlogopath = servletContext1.getRealPath("/");
			String logresult = URLDecoder.decode(logofile, "UTF-8");
			Path conlogopath = Paths.get(contextlogopath + "/images/" + logresult);
			Files.write(conlogopath, bytes1);
			offer.setLogourl(logourldeatails);
			String filename = imageurl.getOriginalFilename().split("\\.")[0];
			System.err.println(filename.trim());
			
			
			
			// upload image
			String imagefile = StringUtils.cleanPath(
			filename.trim() + System.currentTimeMillis() + "." + imageurl.getOriginalFilename().split("\\.")[1]);
			@SuppressWarnings("unused")
			Path imagepath = Paths.get(imagefile);
			byte[] bytes = imageurl.getBytes();
			String imageurldeatails = ServletUriComponentsBuilder.fromCurrentContextPath().path("/images/").path(imagefile)
			.toUriString();
			System.err.println(imageurldeatails);
			ServletContext servletContext = request.getServletContext();
			String contextImagePath = servletContext.getRealPath("/");
			String result = URLDecoder.decode(imagefile, "UTF-8");
			System.err.println(result);
			Path conpath = Paths.get(contextImagePath + "/images/" + result);
			System.err.println(conpath);
			Files.write(conpath, bytes);
			offer.setImageurl(imageurldeatails);
			System.out.println("path::" + conpath);
			System.out.println(offer);
			mv1.addObject("logourldeatails", logourldeatails);
			mv1.addObject("imageurldeatails", imageurldeatails);
			redirectAttrs.addFlashAttribute("mymoffer3", "offerupload succesfully..");
		} catch (Exception e) {
			logger.info("Something is wrong.....");
		}
		return mv1;
	}
	@PostMapping("/preview")
	public ModelAndView showpreviewform(@ModelAttribute("offer") OfferBean offer, RedirectAttributes redirectAttrs,
			HttpServletRequest request) throws ServletException, IOException, SQLException, ParseException {
		    String startDate1= offer.getStartDate();
	     	DateFormat df1 = new SimpleDateFormat("MM/dd/yyyy HH:mm aa");	
		    java.util.Date dtt1 = df1.parse(startDate1);
			System.out.println(dtt1);
			
			String endDate1= offer.getEndDate();
			System.out.println(endDate1);
			DateFormat df2 = new SimpleDateFormat("MM/dd/yyyy HH:mm aa");
			java.util.Date dtt2 = df2.parse(endDate1);
			System.out.println(dtt2);
		
		  System.out.println("inside showpreviewform");
		  ModelAndView  mv = new ModelAndView("offersubmit");
		try {
			
			String fetchpathofimage = request.getParameter("imageurlpath");
			System.out.println(fetchpathofimage);
			
			Offertable table=new Offertable();
			String fetchpathoflogo = request.getParameter("logourlpath");
			System.out.println(fetchpathoflogo);
			
			
			table.setLogourl(fetchpathoflogo);
			table.setStartDate(dtt1);
		    table.setEndDate(dtt2);
			table.setImageurl(fetchpathofimage);
			table.setOfferName(offer.getOfferName());
			table.setContent(offer.getContent());
			table.setLongOffer(offer.getLongOffer());
			table.setShortOffer(offer.getShortOffer());
			table.setUsertype(offer.getUsertype());
			table.setCreatedby("Admin");
			table.setStatus("A");
			table.setModifyby("Admin");
			table.setCreatedate(offer.getCreatedate());
			table.setModifieddate(offer.getModifieddate());
			
			offerservice.add(table);
			mv.addObject("offer", offer);
			//redirectAttrs.addFlashAttribute("offer", offer);
			List<Offertable> elist = offerservice.elist();
			//redirectAttrs.addFlashAttribute("elist", elist);
			mv.addObject("elist", elist);

		} catch (Exception e) {
			logger.error("Exception is:" + e);
		}
return mv;
		
	}
	



     @RequestMapping("/display")
	 public Object  offerdisplay(@ModelAttribute("offer") OfferBean offer,RedirectAttributes redirectatrs) {
			ModelAndView mv=null;
			mv = new ModelAndView("shortoffer");
			List<Offertable> fetchdata = offerservice.fetchdata();
			
			try {
				if(!(fetchdata.isEmpty()))
				{
						mv.addObject("fetchdata", fetchdata);
						 redirectatrs.addFlashAttribute("fetchdata",fetchdata);
				
				}
				else {
					mv = new ModelAndView("offerupload");
				 	redirectatrs.addFlashAttribute("msg", "Currently not active any offer");
					return "redirect:/start";
				
			
				}
			} catch (Exception e) {
				logger.error("Something is wrong....."+e);
			}
			
		//	return "shortoffer";
	return mv;	
     }
	
	@RequestMapping("/done")
	public ModelAndView checkdetails(@ModelAttribute("offer") OfferBean offer,HttpServletRequest
			  request, @RequestParam long offerid) {
		ModelAndView mv = new ModelAndView("longoffer");
				  
				  try {
				  
				  Offertable fetch=offerservice.fetchinfo(offerid);
				  System.out.println(offerid); System.out.println(fetch);
				  mv.addObject("fetch",fetch); } 
				  catch (Exception e) {
					  logger.error("Exception is:" + e);
				  } return mv; }
	
	  @RequestMapping("/success") public ModelAndView
	  longofferm(@ModelAttribute("offer") OfferBean offer,HttpServletRequest
	  request, @RequestParam long offerid ) { ModelAndView mv = new
	  ModelAndView("longoffer");
	  
	  try {
	  
	  Offertable fetch=offerservice.fetchinfo(offerid);
	  System.out.println(offerid); System.out.println(fetch);
	  mv.addObject("fetch",fetch); } 
	  catch (Exception e) {
		  logger.error("Exception is:" + e);
	  } return mv; }
	 
	  
	@RequestMapping("/back")
	public ModelAndView gobacktohome(@ModelAttribute("offer") Offertable offer) {
		ModelAndView mv = new ModelAndView("redirect:start");
		mv.addObject("offer", offer);
		return mv;
	}
	@RequestMapping("/refresh")
	public ModelAndView refresg(@ModelAttribute("offer") Offertable offer) {
		ModelAndView mv = new ModelAndView("redirect:start");
		mv.addObject("offer", offer);
		return mv;
	}
	
}

	
	
		