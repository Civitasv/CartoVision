
import com.carto.service.StudentService;
import com.carto.vo.Student;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext.xml"})
public class JDBCTest {
    @Resource
    StudentService studentService;

    @Test
    public void testSession() throws Exception{
        Student student = new Student();
        student.setIntroduction("ss");
        student.setDept(1);
        student.setName("sdfadf");
        student.setQq("1111");
        student.setStudyNum("s21234213");
        studentService.saveStudent(student);
    }

    @Test
    public void testGet(){
        List<Student> list = studentService.getAll();
        for(Student student:list){
            System.out.println(student);
        }
    }


}
