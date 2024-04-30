package com.spring.hometownC;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.hometownC.impl.CategoryDAO;
import com.spring.hometownC.impl.CategoryDO;
import com.spring.hometownC.impl.CommentDAO;
import com.spring.hometownC.impl.CommentDO;
import com.spring.hometownC.impl.MemberDAO;
import com.spring.hometownC.impl.MemberDO;
import com.spring.hometownC.impl.PostDAO;
import com.spring.hometownC.impl.PostDO;

@Controller
public class hometownCController {

	@Autowired
	PostDAO pdao;
	@Autowired
	CategoryDAO cdao;
	@Autowired
	CommentDAO cmdao;
	@Autowired
	MemberDAO mdao;

	// �Խñ� ���� ���

	// home(��ü��) �ҷ�����
	@RequestMapping("/getPostList.do")
	public String postList(Model model, @SessionAttribute(name = "member", required = false) MemberDO mdo) {
		System.out.println("postList() --> ");

		ArrayList<PostDO> plist = pdao.getPostList();
		model.addAttribute("plist", plist);
		
		MemberDO member = mdao.getMember(mdo);
		model.addAttribute("member", member);

		return "postListView";

	}

	// ī�װ����� �Խñ� �ҷ�����
	@RequestMapping("/getPostListCate.do")
	public String postListCate(int cateSeq, Model model) {
		System.out.println("postListCate() --> ");

		ArrayList<PostDO> plist = pdao.getPostListCate(cateSeq);
		model.addAttribute("plist", plist);

		return "postListView";

	}

	// �۾��� ��ư Ŭ��
	@RequestMapping("/insertPost.do")
	public String insertPost(Model model, @SessionAttribute(name = "member", required = false) MemberDO mdo) {
		System.out.println("insertPost() --> ");
		
		MemberDO member = mdao.getMember(mdo);
		model.addAttribute("member", member);
		
		return "insertPostView";
	}

	// �� �ۼ� �� ���ε�
	@RequestMapping("/insertPostProc.do")
	public String insertPostProc(PostDO pdo, Model model) {
		System.out.println("insertPostProc() --> ");

		pdao.insertPost(pdo);
		return "redirect:getPostList.do";
	}

	// ������ �� �ҷ�����
	@RequestMapping(value = "/getPost.do")
	public String getPost(@ModelAttribute("pdo") PostDO pdo, @SessionAttribute(name = "member", required = false) MemberDO mdo, Model model) {
		System.out.println("getPost() --> ");

		PostDO post = pdao.getPost(pdo);
		model.addAttribute("post", post);
		System.out.println("getPost() --> ");
		CategoryDO cate = cdao.getCategory(post);
		model.addAttribute("cate", cate);

		ArrayList<CommentDO> commentList = cmdao.getCommentList(post);
		model.addAttribute("commentList", commentList);

		MemberDO member = mdao.getMember(mdo);
		model.addAttribute("member", member);
		
		return "getPostView";
	}

	//�� �����ϱ� ��ư Ŭ�� �� ȭ��
	@RequestMapping("/modifyPost.do")
	public String modifyPost(PostDO pdo,@SessionAttribute(name = "member", required = false) MemberDO mdo, Model model) {
		System.out.println("modifyPost() --> ");

		PostDO post = pdao.getPost(pdo);
		model.addAttribute("post", post);
		CategoryDO cate = cdao.getCategory(post);
		model.addAttribute("cate", cate);
		ArrayList<CategoryDO> clist = cdao.getCategoryList();
		model.addAttribute("clist", clist);

		MemberDO member = mdao.getMember(mdo);
		model.addAttribute("member", member);
		
		return "modifyPostView";
	}

	// ���� �� ���� ����
	@RequestMapping("/modifyPostProc.do")
	public String modifyPostProc(PostDO pdo) {
		System.out.println("modifyPostProc() --> ");

		pdao.modifyPostProc(pdo);

		return "redirect:getPostList.do";
	}

	// �� �����ϱ� ��ư
	@RequestMapping("/deletePost.do")
	public String deletePost(PostDO pdo) {
		System.out.println("deletePost() --> ");

		pdao.deletePost(pdo);

		return "redirect:getPostList.do";
	}

	// ���ƿ� ���
	@RequestMapping("/likedPost.do")
	public String likedPost(PostDO pdo, RedirectAttributes redirectAttributes) {
		System.out.println("likedPost() --> ");

		PostDO post = pdao.getPost(pdo);
		pdao.likedPost(post);
		System.out.println("likedPost() --> ");
		redirectAttributes.addFlashAttribute("pdo", post);
		System.out.println("likedPost() --> ");

		return "redirect:getPost.do";
	}

	// ��� ���� ���
	@RequestMapping("/insertComment.do")
	public String insertComment(CommentDO cmdo, PostDO pdo, RedirectAttributes redirectAttributes, @SessionAttribute(name = "member", required = false) MemberDO mdo) {
		System.out.println("insertComment() --> ");

		
		cmdao.insertComment(cmdo, pdo, mdo);

		PostDO post = pdao.getPost(pdo);
		redirectAttributes.addFlashAttribute("pdo", post);

		return "redirect:getPost.do";
	}

	// �α��� ���� ���.
	@RequestMapping("/login.do")
	public String login() {
		System.out.println("login() --> ");

		return "login";
	}

	@RequestMapping(value = "loginProc.do", method = RequestMethod.POST)
	public String loginProc(MemberDO mdo,HttpServletRequest httpServletRequest, Model model) {
		System.out.println("loginProc() --> ");

		MemberDO user = mdao.checkMember(mdo.getId(), mdo.getPassword());
		
		if(user != null) {
			httpServletRequest.getSession().invalidate(); //������ �����ϱ� ���� ������ ���� �ı�
			HttpSession session = httpServletRequest.getSession(true); //Session�� ������ ����
			
			session.setAttribute("member", user);//���ǿ� userId�� �־���
			session.setMaxInactiveInterval(3600); // Session�� 30�е��� ����
			
			return "redirect:getPostList.do";
		}

		return "memberJoin";
	}

	//ȸ������
	@RequestMapping(value = "/memberJoin.do")
	public String memberJoin() {
		System.out.println("memberJoin() --> ");

		return "memberJoin";
	}

	@RequestMapping(value = "/memberJoinProc.do")
	public String memberJoinPorc(MemberDO mdo) {
		System.out.println("memeberJointProc() --> ");

		mdao.memberJoin(mdo);

		return "login";
	}

	//ȸ�� �����ϴ� ȭ�� �ҷ�����
	@RequestMapping(value = "/editMember.do")
	public String editMember(MemberDO mdo, Model model) {
		System.out.println("editMember() --> ");

		//MemberDO member = mdao.getMember(mdo);
		//model.addAttribute("member", member);
		return "editMember";
	}

	//���� ȸ�� ���� ����
	@RequestMapping(value = "/editMemberProc.do")
	public String editMemberProc(MemberDO mdo) {
		System.out.println("editMemberProc() --> ");

		//MemberDO member = mdao.getMember(mdo);

		mdao.editMember(mdo);

		return "forward:getPostList.do?mdo=member";
	}

	// ȸ�� ���� ���̵� �ߺ� üũ
	@RequestMapping("checkId.do")
	public String checkId(@RequestParam("id") String id) {
		System.out.println("checkId() --> ");

		ArrayList<MemberDO> mList = mdao.getMemberList();

		for (int i = 0; i < mList.size(); i++) {
			MemberDO mListmdo = mList.get(i);

			if (id.equals(mListmdo.getId())) {
				return "N";
			}
		}

		return "Y";
	}

	// �� �˻� ���
	@RequestMapping(value = "searchPostList.do")
	public String searchPostList(@RequestParam(value = "searchCon") String searchCon,
			@RequestParam(value = "searchKey") String searchKey, MemberDO mdo, Model model) {
		System.out.println("searchPostList --> ");

		//MemberDO member = mdao.getMember(mdo);

		ArrayList<PostDO> plist = pdao.searchPostList(searchCon, searchKey);
		model.addAttribute("plist", plist);
		//model.addAttribute("member", member);

		return "postListView";

	}

	// �� ���� ���
	@RequestMapping(value = "sortByDate.do")
	public String sortByDate(MemberDO mdo, Model model) {

		ArrayList<PostDO> plist = pdao.sortByDate();

		model.addAttribute("plist", plist);
		//MemberDO member = mdao.getMember(mdo);
		//model.addAttribute("member", member);

		return "postListView";
	}

	// �� ���� ���
	@RequestMapping(value = "sortByLiked.do")
	public String sortByLiked(MemberDO mdo, Model model) {

		ArrayList<PostDO> plist = pdao.sortByLiked();

		model.addAttribute("plist", plist);
		//MemberDO member = mdao.getMember(mdo);
		//model.addAttribute("member", member);

		return "postListView";
	}

}