package com.offersmodule.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.offersmodule.model.Offertable;
import com.offersmodule.repository.Offerrepository;

@Service
public class Offerservice {

	@Autowired
	Offerrepository offerrepositoryr;

	public Offertable add(Offertable table) {

		return offerrepositoryr.save(table);
	}
	public List<Offertable> elist() {

		return (List<Offertable>) offerrepositoryr.findAll(); // fetching all data inside offer
	} 
	
	public List<Offertable> fetchdata() {
		
	return	(List<Offertable>) offerrepositoryr.fetch();	 // fetching all data inside offer
	}
	
	public Offertable fetchinfo(long offerid) {
		return offerrepositoryr.findById(offerid).orElse(null);
	}
	
	
	
	 
	


}