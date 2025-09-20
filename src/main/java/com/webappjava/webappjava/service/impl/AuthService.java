package com.webappjava.webappjava.service.impl;
import com.webappjava.webappjava.dao.IUserDAO;
import com.webappjava.webappjava.dao.impl.UserDAO;
import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.service.IAuthService;
import com.webappjava.webappjava.util.PasswordUtil;

public class AuthService implements IAuthService {

    private final IUserDAO userDAO = new UserDAO();

    @Override
    public User login(String username, String password) {
        try {
            User user = userDAO.findByUsername(username);
            if (user != null && PasswordUtil.checkPassword(password, user.getPassword())) {
                return user;
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public void register(User user) {
        try {
            String hashedPassword = PasswordUtil.hashPassword(user.getPassword());
            user.setPassword(hashedPassword);
            userDAO.insert(user);
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}