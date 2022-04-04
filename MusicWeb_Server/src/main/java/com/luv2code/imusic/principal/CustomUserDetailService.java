//package com.luv2code.imusic.principal;
//import com.luv2code.imusic.entity.User;
//import com.luv2code.imusic.repository.UserRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//
//public class CustomUserDetailService implements UserDetailsService{
//    @Autowired
//    private UserRepository userRepo;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//        User user =  userRepo.getUserByUserName(username);
//        if(user != null) {
//            return new UserPrincipal(user);
//        }
//
//        throw new UsernameNotFoundException("Cound not find user : " + username);
//    }
//}
