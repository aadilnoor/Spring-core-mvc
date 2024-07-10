package com.springmvc;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class UploadFileController {

	@RequestMapping("/fileform")
	public String uploadFile() {

		System.out.println("file form controller");
		return "fileform";

	}

	@RequestMapping(value = "/uploadfile", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("fileupload") CommonsMultipartFile file, HttpSession session, Model model) {

		System.out.println("file upload success");

		System.out.println(file.getSize());
		System.out.println(file.getOriginalFilename());
		byte[] data = file.getBytes();

		// we have to save this file to the server
		String path = session.getServletContext().getRealPath("/") + file.getOriginalFilename();
		System.out.println(path);
		try {

			FileOutputStream fileOutputStream = new FileOutputStream(path);
			fileOutputStream.write(data);
			fileOutputStream.close();
			System.out.println("File uploaded...");

			model.addAttribute("msg", "File Uploaded Successfully");
			model.addAttribute("filename", file.getOriginalFilename());

		} catch (IOException e) {

			e.printStackTrace();
			model.addAttribute("msg","Uploading Error !");

		}

		return "file-success";
	}
}
