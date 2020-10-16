package member.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myMemberDao")
public class MemberDao {
	private String namespace="member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlsessiontemplate;
	
	public void insertData(Member member){
		sqlsessiontemplate.insert(namespace+".InsertData",member);
	}
	
	public Member getMembers(String mid) {
		Member member = sqlsessiontemplate.selectOne(namespace+".GetMembers");
		return member;
	}
	
	public int getTotalCount(Map<String,String> mlist){
		int cnt = sqlsessiontemplate.selectOne(namespace+".GetTotalCount",mlist);
		return cnt;
	}
	
	public List<Member> getMemberList(Paging paging, Map<String,String> mlist){
		List<Member> lists = new ArrayList<Member>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlsessiontemplate.selectList(namespace+".GetMemberList",mlist,rowBounds);
		return lists;
	}
	
	public int deleteData(int mnum) {
		int cnt= sqlsessiontemplate.delete(namespace+".DeleteMember",mnum);
		return cnt;
	}

	public Member getOneMember(int mnum) {
		Member member =sqlsessiontemplate.selectOne(namespace+".GetOneMember", mnum);
		return member;
	}

	public int updateMem(Member member) {
		int cnt = sqlsessiontemplate.update(namespace+".UpdateMem", member);
		return cnt;
	}
	
	public int getDuplicateId(String checkId) { 
		int cnt = sqlsessiontemplate.selectOne(namespace+".CheckID",checkId);
		return cnt;
	}
}
