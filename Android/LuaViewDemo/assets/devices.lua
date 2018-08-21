function hello()
    print 'hello'
end
function test(str)
    print('data from java is:'..str)
    return 'haha'
end

function callJavaMethod()

    local loggerClass = luajava.bindClass("altamob.com.luaapplication.Logger");
    -- 创建对象
    local loggerObject=luajava.new(loggerClass)
    -- 调用对象方法
    loggerObject:test("test call java in lua")
end

function callJavaStaticMethod()

    local loggerClass = luajava.bindClass("altamob.com.luaapplication.Logger");

    -- 调用对象方法
    loggerClass:sayHello("test call java static method in lua")
    loggerClass:getFlag()
end

function getDevice()
    local build = luajava.bindClass("android.os.Build");
    if(build == nil) then
        print("build is nil");
    end

    return build:getString("ro.product.device")
end