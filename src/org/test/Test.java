package org.test;

import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.dao.AdminDao;
import org.dao.AlbDao;
import org.dao.MsgDao;
import org.dao.STLDao;
import org.dao.SingerDao;
import org.dao.SongDao;
import org.dao.UserDao;
import org.model.Admin;
import org.model.Album;
import org.model.Message;
import org.model.Singer;
import org.model.Song;
import org.model.Storelist;
import org.model.StorelistId;
import org.model.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Test {
	public static void main(String[] args){
//		Admin admin=new Admin();
//		admin.setAdName("lihuan2");
//		admin.setAdPassed("lihuan");
//		admin.setAdType(0);
		ApplicationContext context=new FileSystemXmlApplicationContext("WebContent/WEB-INF/classes/applicationContext.xml");
//		AdminDao adminDao=(AdminDao)context.getBean("AdminDao");
//		adminDao.addAdmin(admin);
		User user=new User();
		user.setUsName("lihuan");
		user.setUsPasswd("lihuan");
		user.setUsEmail("asdf@qq.com");
		UserDao userDao=(UserDao)context.getBean("UserDao");
		try{
			User lihuan=userDao.validate("lihuan123132");//addUser(user);
			System.out.println(lihuan==null?"user is null":" user is not null: "+lihuan.getUsName());
		}catch(RuntimeException e){
			e.printStackTrace();
			System.out.println("it is runtime exception");
		}
//		SingerDao singerDao=(SingerDao)context.getBean("SingerDao");
//		Singer singer=singerDao.getById(6);
//		AlbDao albdao=(AlbDao)context.getBean("AlbDao");
		STLDao stldao=(STLDao)context.getBean("STLDao");
		SongDao songdao=(SongDao)context.getBean("SongDao");
		System.out.println("ok");
//		System.out.print(singer.getSgrName()+"\n");
//		Set set=singer.getSongs();
//		if(set==null)
//			System.out.print("set is null");
//		else{
//			Iterator it=set.iterator();
//			while(it.hasNext()){
//				Song song=(Song)it.next(); 
//				System.out.print(song.getSgName());
//			}
//		}
//		userDao.addUser(user);
		
//		List list=songdao.getHotInArea("ï¿½ï¿½ï¿½ï¿½", 50);
//		Iterator it=list.iterator();
//		while(it.hasNext()){
//			System.out.println(((Song) it.next()).getSgName());
//		}
//		String areaq="»ªÓï",typeq="ÄÐ";
//		String query="select count(*) from Singer as singer where singer.sgrArea='"+areaq+"'"+" and singer.sgrType='"+typeq+"'";
////		int num=singerDao.getRows(query);
//		System.out.println(":"+singerDao.getRows(query));
//		Message ms=new Message();
//		ms.setContactInfo("QQ");
//		ms.setMsContent("°¡ìªìªµÄ·¨°¡°¡°¡");
//		MsgDao msgdao=(MsgDao)context.getBean("MsgDao");
//		msgdao.addMsg(ms);
//		Message msg=msgdao.getById(10);
//		msg.setMsContent("wo334444433");
//		msgdao.update(msg);
//		msgdao.update(msg);
//		List singers=singerDao.getAll();
//		if(singers==null)
//			System.out.print("set is null");
//		else{
//			Iterator it=singers.iterator();
//			while(it.hasNext()){
//				Singer sing=(Singer)it.next(); 
//				System.out.print(sing.getSgrName());
//			}
//		}
//		Set set=singer.getAlbums();
//		Iterator it=set.iterator();
////		while(it.hasNext()){
//			Album al=(Album) it.next();
//			System.out.println(al.getAbName());
//			System.out.println(al.getSinger().getSgrName());
//			Set songs=al.getSongs();
//			it=songs.iterator();
//			while(it.hasNext()){
//				Song sg=(Song) it.next();
//				System.out.println(sg.getSgName());
//				System.out.println(sg.getAlbum().getAbName());
//			}
////		}
//		List ls=singerDao.search("³Â");
//		Iterator it=ls.iterator();
//		while(it.hasNext()){
//			System.out.println(((Singer)it.next()).getSgrName());
//		}
//		
//		List ls=albdao.getByArea("»ªÓï", 1, 10);
//		Iterator it=ls.iterator();
//		while(it.hasNext()){
//			System.out.println(((Album)it.next()).getAbName());
//		}
//		int nums=albdao.getRows("select count(*) from Album as album where album.singer.sgrArea='"+"»ªÓï"+"'");
//		System.out.println(nums);
//		Storelist stl=new Storelist();
//		stl.setId(new StorelistId("lihuan",1));
//		stl.setRelation("store");
//		stldao.add(stl);
//		List list=stldao.allShare();
//		System.out.println(list.size());
//		Iterator it=list.iterator();
//		Storelist stl=(Storelist) it.next();
//		System.out.println(stl.getUser().getUsName());
//		System.out.println(stl.getSong().getAlbum().getAbName());
//		Storelist stl=new Storelist();
//		stl.setUser(userDao.validate("LiHuan"));
//		stl.setSong(songdao.getById(3));
//		stl.setRelation("store");
//		stldao.add(stl);
//		Song ls=songdao.getById(50);
//		System.out.println(ls.getAlbum().getAbName());
	}
}
