package cn.tla001.mytags;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/*
 * 继承
 */
public class ShowIpTag extends SimpleTagSupport {

	private JspContext context;

	@Override
	public void setJspContext(JspContext pc) {
		// TODO Auto-generated method stub
		this.context = pc;
	}

	/*
	 * 覆盖doTag
	 */
	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		PageContext pageContext = (PageContext) context;
		HttpServletRequest request = (HttpServletRequest) pageContext
				.getRequest();
		String ip = request.getRemoteHost();
		JspWriter outJspWriter = pageContext.getOut();
		outJspWriter.write("使用自定义标签输出客户端地址： " + ip);
	}
}
