package com.qiang.framework.helper;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Created by Lin on 2017/3/1.
 */

public class ReflectHelper {

    public static void invokeMethod(String className, String methodName, Object[] objects, Class... parameterTypes)
    {
        Class[] types = new Class[objects.length];

        if(parameterTypes != null)
        {
            for(int i=0;i<parameterTypes.length;i++)
                types[i] = parameterTypes[i];
        }

        for(int i=0;i<types.length;i++)
        {
            if(types[i] == null)
                types[i] = objects[i].getClass();
        }

        try {
            Class ownerClass = Class.forName(className);

            Method method = ownerClass.getMethod(methodName, types);
            method.invoke(null, objects);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
