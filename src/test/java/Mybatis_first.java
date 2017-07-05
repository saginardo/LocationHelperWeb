import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * 测试mybatis程序
 *
 * @author saginardo
 * @date 2017-07-02 21:10
 */
public class Mybatis_first {

    private SqlSessionFactory sqlSessionFactory;
    private static Logger logger = LogManager.getLogger(Mybatis_first.class.getName());

    @Before
    public void createSqlSessionFactory() throws IOException {
        // 配置文件
        String resource = "config/mybatis/SqlMapConfig.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);

        // 使用SqlSessionFactoryBuilder从xml配置文件中创建SqlSessionFactory
        sqlSessionFactory = new SqlSessionFactoryBuilder()
                .build(inputStream);

    }

    // 根据 id查询用户信息 使用的是device命名空间
    @Test
    public void testFindDeviceById() {
        // 数据库会话实例
        SqlSession sqlSession = null;
        try {
            // 创建数据库会话实例sqlSession
            sqlSession = sqlSessionFactory.openSession();
            // 查询单个记录，根据用户id查询用户信息
            LocationDevice device = sqlSession.selectOne("devices.findDeviceById", "00001");
            // 输出用户信息
            logger.info("结果是："+device);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

    }

    // 删除信息
    @Test
    public void testDelete() {
        // 数据库会话实例
        SqlSession sqlSession = null;
        try {
            // 创建数据库会话实例sqlSession
            sqlSession = sqlSessionFactory.openSession();
            // 删除用户
            sqlSession.delete("devices.deleteDeviceById","00001");
            // 提交事务
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }


    // 更新设备信息
    @Test
    public void testUpdate() {
        // 数据库会话实例
        SqlSession sqlSession = null;
        try {
            // 创建数据库会话实例sqlSession
            sqlSession = sqlSessionFactory.openSession();
            // 添加设备信息
            LocationDevice locationDevice = new LocationDevice();
            locationDevice.setDeviceId("00033");
            locationDevice.setMacAddress("01:11:32:17:12:BE");
            locationDevice.setLatitude("29.536871");
            locationDevice.setLongitude("106.681932");
            locationDevice.setOwner("testUser");
            locationDevice.setDeviceStatus("OffLine");
            sqlSession.update("devices.updateDevice", locationDevice);
            // 提交事务
            sqlSession.commit();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    // 添加设备信息
    @Test
    public void testInsert() {
        // 数据库会话实例
        SqlSession sqlSession = null;
        try {
            // 创建数据库会话实例sqlSession
            sqlSession = sqlSessionFactory.openSession();
            // 添加设备信息
            LocationDevice locationDevice = new LocationDevice();
            locationDevice.setDeviceId("00033");
            locationDevice.setMacAddress("01:11:32:17:12:01");
            locationDevice.setLatitude("29.536171");
            locationDevice.setLongitude("106.681232");
            locationDevice.setOwner("admin");
            locationDevice.setDeviceStatus("Normal");
            sqlSession.insert("devices.insertDevice", locationDevice);
            //提交事务
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }


}

