package proj_dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Entity
public class Keb_Dto {

	@Id
	private long student_reg_num;
	private String student_name;
	private String email;
	private String faher_name;
	private String mother_name;

	private int kannada;
	private int English;
	private int Mathematics;
	private int Biology;
	private int Chemistry;
	private int Physics;
	
	private int Kannada_internal;
	private int English_internal;
	private int Mathematics_internal;
	private int Biology_internal;
	private int Chemistry_internal;
	private int Physics_internal;
	

	

	@Override
	public String toString() {
		return "Keb_Dto [student_reg_num=" + student_reg_num + ", student_name=" + student_name + ", email=" + email
				+ ", faher_name=" + faher_name + ", mother_name=" + mother_name + ", kannada=" + kannada + ", English="
				+ English + ", Mathematics=" + Mathematics + ", Biology=" + Biology + ", Chemistry=" + Chemistry
				+ ", Physics=" + Physics + ", Kannada_internal=" + Kannada_internal + ", English_internal="
				+ English_internal + ", Mathematics_internal=" + Mathematics_internal + ", Biology_internal="
				+ Biology_internal + ", Chemistry_internal=" + Chemistry_internal + ", Physics_internal="
				+ Physics_internal + "]";
	}

	public int getKannada_internal() {
		return Kannada_internal;
	}

	public void setKannada_internal(int kannada_internal) {
		Kannada_internal = kannada_internal;
	}

	public int getEnglish_internal() {
		return English_internal;
	}

	public void setEnglish_internal(int english_internal) {
		English_internal = english_internal;
	}

	public int getMathematics_internal() {
		return Mathematics_internal;
	}

	public void setMathematics_internal(int mathematics_internal) {
		Mathematics_internal = mathematics_internal;
	}

	public int getBiology_internal() {
		return Biology_internal;
	}

	public void setBiology_internal(int biology_internal) {
		Biology_internal = biology_internal;
	}

	public int getChemistry_internal() {
		return Chemistry_internal;
	}

	public void setChemistry_internal(int chemistry_internal) {
		Chemistry_internal = chemistry_internal;
	}

	public int getPhysics_internal() {
		return Physics_internal;
	}

	public void setPhysics_internal(int physics_internal) {
		Physics_internal = physics_internal;
	}

	public long getStudent_reg_num() {
		return student_reg_num;
	}

	public void setStudent_reg_num(long student_reg_num) {
		this.student_reg_num = student_reg_num;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFaher_name() {
		return faher_name;
	}

	public void setFaher_name(String faher_name) {
		this.faher_name = faher_name;
	}

	public String getMother_name() {
		return mother_name;
	}

	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}

	public int getKannada() {
		return kannada;
	}

	public void setKannada(int kannada) {
		this.kannada = kannada;
	}

	public int getEnglish() {
		return English;
	}

	public void setEnglish(int english) {
		English = english;
	}

	public int getMathematics() {
		return Mathematics;
	}

	public void setMathematics(int mathematics) {
		Mathematics = mathematics;
	}

	public int getBiology() {
		return Biology;
	}

	public void setBiology(int biology) {
		Biology = biology;
	}

	public int getChemistry() {
		return Chemistry;
	}

	public void setChemistry(int chemistry) {
		Chemistry = chemistry;
	}

	public int getPhysics() {
		return Physics;
	}

	public void setPhysics(int physics) {
		Physics = physics;
	}

	public String getTotal(String total) {
		return total;
	}

	public String percentage(String percent) {
		return percent;
		
	}

}
