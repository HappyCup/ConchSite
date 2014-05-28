package org.model;

// Generated 2013-4-21 17:11:43 by Hibernate Tools 3.2.2.GA

/**
 * StorelistId generated by hbm2java
 */
public class StorelistId implements java.io.Serializable {

	private String usName;
	private int idSong;

	public StorelistId() {
	}

	public StorelistId(String usName, int idSong) {
		this.usName = usName;
		this.idSong = idSong;
	}

	public String getUsName() {
		return this.usName;
	}

	public void setUsName(String usName) {
		this.usName = usName;
	}

	public int getIdSong() {
		return this.idSong;
	}

	public void setIdSong(int idSong) {
		this.idSong = idSong;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof StorelistId))
			return false;
		StorelistId castOther = (StorelistId) other;

		return ((this.getUsName() == castOther.getUsName()) || (this
				.getUsName() != null && castOther.getUsName() != null && this
				.getUsName().equals(castOther.getUsName())))
				&& (this.getIdSong() == castOther.getIdSong());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getUsName() == null ? 0 : this.getUsName().hashCode());
		result = 37 * result + this.getIdSong();
		return result;
	}

}
