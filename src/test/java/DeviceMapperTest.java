import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.mapper.LocationDeviceMapper;
import junit.framework.TestCase;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.InputStream;
import java.util.List;

/**
 * 测试mapper代理方法
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-04 9:21
 */
public class DeviceMapperTest extends TestCase {

    private SqlSessionFactory sqlSessionFactory;
    private static Logger logger = LogManager.getLogger(DeviceMapperTest.class.getName());

    protected void setUp() throws Exception {
        //mybatis配置文件
        String resource = "config/mybatis/sqlMapConfig.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        //使用SqlSessionFactoryBuilder创建sessionFactory
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    @Test
    public void testFindDeviceById() throws Exception {
        //获取session
        SqlSession session = sqlSessionFactory.openSession();
        //获取mapper接口的对象
        LocationDeviceMapper deviceMapper = session.getMapper(LocationDeviceMapper.class);
        //调用mapper对象方法
        LocationDevice device = deviceMapper.findDeviceById("00001");
        logger.info("查询的Device是：" + device);
        //关闭session
        session.close();

    }

    @Test
    public void testFindDeviceAll() throws Exception {
        //获取session
        SqlSession session = sqlSessionFactory.openSession();
        //获取mapper接口的对象
        LocationDeviceMapper deviceMapper = session.getMapper(LocationDeviceMapper.class);
        //调用mapper对象方法
        List<LocationDevice> device = deviceMapper.findDeviceAll();
        logger.info("查询的Device列表是：" + device.toString());
        //关闭session
        session.close();
    }

    @Test
    public void testDeleteDeviceById() throws Exception {
        //获取session
        SqlSession session = sqlSessionFactory.openSession();
        //获取mapper接口的对象
        LocationDeviceMapper deviceMapper = session.getMapper(LocationDeviceMapper.class);
        //调用mapper对象方法
        int i = deviceMapper.deleteDeviceById("00003");
        logger.info("删除的设备数量是：" + i);
        session.commit();
        //关闭session
        session.close();
    }

    @Test
    public void testUpdateDevice() throws Exception {
        SqlSession session = sqlSessionFactory.openSession();
        LocationDeviceMapper mapper = session.getMapper(LocationDeviceMapper.class);
        LocationDevice locationDevice = new LocationDevice();
        locationDevice.setDeviceId("00001");
        locationDevice.setMacAddress("00:00:00:00:00:01");
        locationDevice.setLatitude("29.536187");
        locationDevice.setLongitude("106.491872");
        locationDevice.setOwner("testUser2");
        locationDevice.setDeviceStatus("Normal");
        int i = mapper.updateDevice(locationDevice);
        logger.info("更新的设备数量是：" + i);
        session.commit();
        session.close();
    }

    @Test
    public void testInsertDevice() throws Exception {
        SqlSession session = sqlSessionFactory.openSession();
        LocationDeviceMapper mapper = session.getMapper(LocationDeviceMapper.class);
        LocationDevice locationDevice = new LocationDevice();
        locationDevice.setDeviceId("00001");
        locationDevice.setMacAddress("00:00:00:00:00:01");
        locationDevice.setLatitude("29.536187");
        locationDevice.setLongitude("106.491872");
        locationDevice.setOwner("testUser2");
        locationDevice.setDeviceStatus("OffLine");
        int i = mapper.insertDevice(locationDevice);
        logger.info("添加的设备数量是：" + i);
        session.commit();
        session.close();
    }

    //测试spring和mybatis整合
    @Test
    public void testFindByIdWithSpring() throws Exception {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:config/spring/applicationContext_dao.xml");
        SqlSessionFactory sqlSessionFactory = ctx.getBean("sqlSessionFactory", this.sqlSessionFactory.getClass());
        SqlSession sqlSession = sqlSessionFactory.openSession();
        //获取mapper接口的对象
        LocationDeviceMapper deviceMapper = sqlSession.getMapper(LocationDeviceMapper.class);
        //调用mapper对象方法
        LocationDevice device = deviceMapper.findDeviceById("00001");
        logger.info("查询的Device是：" + device);
        //关闭session
        sqlSession.close();
    }
}
