package egovframework.example.security;

import java.util.ArrayList;
import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import egovframework.example.Dto.BoardDto;
import egovframework.example.model.ServiceController;

@Service
public class UserDetailsServiceCustom implements UserDetailsService {
	
	@Autowired
	private ServiceController service;
	
	private Logger log = LoggerFactory.getLogger(UserDetailsServiceCustom.class);

	@Override
	public UserDetails loadUserByUsername(String adminid)
				throws UsernameNotFoundException {
		
		BoardDto dto = service.loginChk(adminid);

		Collection<SimpleGrantedAuthority> roles =
				new ArrayList<SimpleGrantedAuthority>();

		roles.add(new SimpleGrantedAuthority(dto.getAuth()));
		log.info(dto.getAuth());
		
		UserDetails user = new User(adminid,dto.getPw(),roles);
		
		log.info("user { }"+user);

		return user;
		
		}

}
