package com.fh.controller.erp.trade;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.util.Tools;
import com.fh.service.erp.customer.CustomerManager;
import com.fh.service.erp.level.LevelManager;
import com.fh.service.erp.remarks.RemarksManager;

/** 
 * 说明：交易报价
 * 创建人：liuyw
 * 创建时间：2017-10-27
 */
@Controller
@RequestMapping(value="/trade")
public class TradeController extends BaseController {
	
	@RequestMapping("/longTrade")
	public String role(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "erp/trade/longTrade";
	}
	
	@RequestMapping("/biddingTrade")
	public String role2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "erp/trade/longTrade";
	}
	
	@RequestMapping("/longIdea")
	public String role3(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "erp/trade/longIdea";
	}
	
	@RequestMapping("/biddingIdea")
	public String role4(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "erp/trade/biddingIdea";
	}
}
