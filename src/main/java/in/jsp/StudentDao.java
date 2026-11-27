package in.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class StudentDao {
	
	@Autowired 
	private EntityManagerFactory emf;
	public int addStudent(Student s) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction etran = em.getTransaction();
		etran.begin();
		em.persist(s);
		etran.commit();
		return s.getId();
	}
	
	public int removeStudentById(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction etran = em.getTransaction();
		etran.begin();
		Query q = em.createQuery("delete from Student s where s.id = ?1");
		q.setParameter(1, id);
		q.executeUpdate();
		etran.commit();
		return id;
	}
	
	public Student getStudentById(int id) {
		EntityManager em = emf.createEntityManager();
		Student s = em.find(Student.class, id);
		return s;
	}
	
	public List<Student> getAllStudents(){
		EntityManager em = emf.createEntityManager();
		TypedQuery<Student> q = em.createQuery("select s from Student s", Student.class);
		return q.getResultList();
	}
	
	public int updateStudent(Student s) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction etran = em.getTransaction();
		etran.begin();
		em.merge(s);
		etran.commit();
		return s.getId();
	}
}
