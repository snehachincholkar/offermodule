package com.offersmodule.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.offersmodule.model.Offertable;


@Repository
public interface Offerrepository extends JpaRepository<Offertable,Long> 
{
	@Query(value = "select * from offers_table o WHERE NOW() >= DATE(o.START_DATE) AND now() <= DATE(o.END_DATE) "
			+ "AND o.STATUS='A' AND o.USERTYPE='1' ", nativeQuery = true)
	public List<Offertable> fetch();
}
 
