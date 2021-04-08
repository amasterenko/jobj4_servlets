package ru.job4j.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GreetingServletJson  extends HttpServlet {
    private static final Logger LOG = LoggerFactory.getLogger(GreetingServletJson.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        JSONObject jsonReq = null;
        try {
            jsonReq = new JSONObject(req.getParameterNames().asIterator().next());
            JSONObject jsonResp = new JSONObject();
            jsonResp.put("text", "Nice to meet you, " + jsonReq.getString("text"));
            PrintWriter writer = resp.getWriter();
            writer.print(jsonResp);
            writer.flush();
        } catch (Exception e) {
            LOG.error("Exception occurred: ", e);
        }
    }
}