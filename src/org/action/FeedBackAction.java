package org.action;

import java.util.Map;

import org.dao.MsgDao;
import org.model.Message;
import org.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FeedBackAction extends ActionSupport{
	private String fbContent;
	private String contactInfo;
	
	private MsgDao msgdao;
	
	public MsgDao getMsgdao() {
		return msgdao;
	}
	public void setMsgdao(MsgDao msgdao) {
		this.msgdao = msgdao;
	}
	public String getFbContent() {
		return fbContent;
	}
	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}
	public String getContactInfo() {
		return contactInfo;
	}
	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}

	public String execute()throws Exception{
		Message feedback=new Message();
		feedback.setMsContent(fbContent);
		feedback.setContactInfo(contactInfo);
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		if(user!=null){
			feedback.setUsName(user.getUsName());
		}
		msgdao.addMsg(feedback);
		return SUCCESS;
	}
}
