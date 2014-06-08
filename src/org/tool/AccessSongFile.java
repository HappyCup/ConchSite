package org.tool;

import java.io.InputStream;

import com.aliyun.openservices.oss.OSSClient;
import com.aliyun.openservices.oss.model.OSSObject;

public class AccessSongFile {

	private static AccessSongFile as;
	
	private OSSClient client;
	private String accessKeyId="OpwbQs4LVm0I44KQ";
	private String accessKeySecret="Wg12HRNEOuZve7GgawSRZjHQnd0O6R";
	private String bucketName="leesitedata";
	
	private AccessSongFile(){
		client=new OSSClient(accessKeyId,accessKeySecret);
	}
	
	public static AccessSongFile getInstance(){
		if(as==null){
			as=new AccessSongFile();
		}
		return as;
	}
	
	public InputStream getSongStream(String songPath){
		System.out.println("song key:"+songPath);
		OSSObject object=client.getObject(bucketName, songPath);
		InputStream objectContent = object.getObjectContent();
		return objectContent;
	}
}
