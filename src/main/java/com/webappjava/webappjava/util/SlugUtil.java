package com.webappjava.webappjava.util;

import com.webappjava.webappjava.dao.ICategoryDAO;
import com.webappjava.webappjava.exception.DAOException;

import java.text.Normalizer;
import java.util.Locale;

public class SlugUtil {
    public static String toSlug(String input) {
        if (input == null) {
            return "";
        }
        String slug = input.toLowerCase(Locale.ROOT);
        slug = Normalizer.normalize(slug, Normalizer.Form.NFD);
        slug = slug.replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
        slug = slug.replaceAll("[^a-z0-9]+", "-");
        slug = slug.replaceAll("^-+|-+$", "");
        return slug;
    }

    public static String generateUniqueSlug(String name, ICategoryDAO categoryDAO) throws DAOException {
        String baseSlug = toSlug(name);
        String slug = baseSlug;
        int counter = 1;
        while (categoryDAO.existsBySlug(slug)) {
            slug = baseSlug + "-" + counter;
            counter++;
        }
        return slug;
    }
}