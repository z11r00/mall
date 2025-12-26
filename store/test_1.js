// 假设这是你的数据配置文件
const configData = {
    users: [
        { id: 1, name: "Alice", age: 30 },
        { id: 2, name: "Bob", age: 25 },
        // 更多用户...
    ],
    settings: {
        theme: "dark",
        language: "en"
    }
};

// 可以提供一个函数来访问这些数据
function getConfigData() {
    return configData;
}
