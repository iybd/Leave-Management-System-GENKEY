/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.dao;
/** author Isabella Danso*/
import java.util.Date;
 
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
 
import com.leavesystem.dao.AbstractDao;
import com.leavesystem.entity.Login;
 
@Repository("tokenRepositoryDao")
@Transactional
public class HibernateTokenRepositoryImpl extends AbstractDao<String,Login>
        implements PersistentTokenRepository {
 
    static final Logger logger = LoggerFactory.getLogger(HibernateTokenRepositoryImpl.class);
 
    @Override
    public void createNewToken(PersistentRememberMeToken token) {
        logger.info("Creating Token for user : {}", token.getUsername());
        Login persistentLogin = new Login();
        persistentLogin.setUsername(token.getUsername());
        persistentLogin.setSeries(token.getSeries());
        persistentLogin.setToken(token.getTokenValue());
        persistentLogin.setLast_used(token.getDate());
        persist(persistentLogin);
 
    }
 
    @Override
    public PersistentRememberMeToken getTokenForSeries(String seriesId) {
        logger.info("Fetch Token if any for seriesId : {}", seriesId);
        try {
            Criteria crit = createEntityCriteria();
            crit.add(Restrictions.eq("series", seriesId));
            Login persistentLogin = (Login) crit.uniqueResult();
 
            return new PersistentRememberMeToken(persistentLogin.getUsername(), persistentLogin.getSeries(),
                    persistentLogin.getToken(), persistentLogin.getLast_used());
        } catch (Exception e) {
            logger.info("Token not found...");
            return null;
        }
    }
 
    @Override
    public void removeUserTokens(String username) {
        logger.info("Removing Token if any for user : {}", username);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("username", username));
        Login persistentLogin = (Login) crit.uniqueResult();
        if (persistentLogin != null) {
            logger.info("rememberMe was selected");
            delete(persistentLogin);
        }
 
    }
 
    @Override
    public void updateToken(String seriesId, String tokenValue, Date lastUsed) {
        logger.info("Updating Token for seriesId : {}", seriesId);
       Login login = getByKey(seriesId);
        login.setToken(tokenValue);
        login.setLast_used(lastUsed);
        update(login);
    }
 
}
