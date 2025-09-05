# 贡献指南

感谢您对 Starchat 项目的关注！我们欢迎所有形式的贡献。

## 🤝 如何贡献

### 报告问题 (Issues)

在提交问题之前，请：
1. 搜索现有的 Issues，避免重复
2. 使用清晰的标题描述问题
3. 提供详细的复现步骤
4. 包含系统环境信息

**Issue 模板：**
```markdown
## 问题描述
[清楚地描述遇到的问题]

## 复现步骤
1. 打开应用
2. 点击...
3. 输入...
4. 看到错误

## 期望行为
[描述您期望发生什么]

## 实际行为
[描述实际发生了什么]

## 环境信息
- 操作系统: [例如 Windows 11, macOS 13]
- 浏览器: [例如 Chrome 120, Safari 17]
- 设备: [例如 Desktop, iPhone 15]

## 截图
[如果适用，添加截图帮助说明问题]
```

### 功能建议 (Feature Requests)

提交功能建议时，请：
1. 详细描述建议的功能
2. 说明使用场景和价值
3. 考虑实现的可行性
4. 提供UI/UX建议（如适用）

### 代码贡献 (Pull Requests)

#### 开发环境设置

1. **Fork 项目**
   ```bash
   # 克隆您的 fork
   git clone https://github.com/[您的用户名]/starchat.git
   cd starchat
   ```

2. **本地开发**
   ```bash
   # 创建特性分支
   git checkout -b feature/your-feature-name
   
   # 进行开发...
   # 使用任何现代浏览器打开 index.html 进行测试
   ```

3. **提交更改**
   ```bash
   # 添加更改
   git add .
   
   # 提交（使用清晰的提交信息）
   git commit -m "feat: 添加新的聊天气泡样式"
   
   # 推送到您的 fork
   git push origin feature/your-feature-name
   ```

#### 代码规范

**JavaScript 规范：**
- 使用 ES6+ 语法
- 使用 2 空格缩进
- 使用 camelCase 命名变量和函数
- 使用 PascalCase 命名类
- 添加必要的注释，特别是复杂逻辑

**示例代码风格：**
```javascript
/**
 * 创建新的AI角色
 * @param {string} name - 角色名称
 * @param {object} persona - 角色人设
 * @returns {Promise<object>} 创建的角色对象
 */
async function createAiCharacter(name, persona) {
  const character = {
    id: generateUniqueId(),
    name: name.trim(),
    persona: persona,
    createdAt: Date.now()
  };
  
  await db.chats.add(character);
  return character;
}
```

**HTML/CSS 规范：**
- 使用语义化的HTML标签
- 优先使用 TailwindCSS 类
- 自定义CSS放在 `<style>` 标签或单独文件
- 保持响应式设计

**提交信息规范：**
使用 [约定式提交](https://www.conventionalcommits.org/zh-hans/) 格式：

- `feat:` 新功能
- `fix:` 修复bug
- `docs:` 文档更新
- `style:` 代码格式（不影响功能）
- `refactor:` 重构
- `test:` 测试相关
- `chore:` 构建/工具相关

#### Pull Request 流程

1. **确保代码质量**
   - 测试所有修改的功能
   - 确保没有控制台错误
   - 检查响应式设计

2. **创建 Pull Request**
   - 使用清晰的标题
   - 详细描述更改内容
   - 关联相关的 Issues
   - 添加截图（如适用）

3. **代码审查**
   - 响应审查意见
   - 及时修改代码
   - 保持友善的交流

**PR 模板：**
```markdown
## 更改描述
[描述此PR的目的和更改内容]

## 更改类型
- [ ] 新功能
- [ ] Bug修复
- [ ] 重构
- [ ] 文档更新
- [ ] 样式更新

## 测试
- [ ] 在Chrome中测试
- [ ] 在移动设备中测试
- [ ] 测试了相关功能

## 截图
[如果有UI更改，请添加截图]

## 关联Issues
Closes #[issue号码]
```

## 🎨 设计贡献

我们也欢迎设计方面的贡献：

- UI/UX 改进建议
- 图标和插图设计
- 主题和配色方案
- 用户体验优化

请通过 Issues 或直接联系我们分享您的设计想法。

## 📝 文档贡献

文档改进包括：
- 修复错别字和语法错误
- 添加使用示例
- 完善API文档
- 翻译文档

## 🏷️ 标签说明

我们使用以下标签来分类 Issues 和 PRs：

- `bug` - 程序错误
- `enhancement` - 功能增强
- `feature` - 新功能
- `documentation` - 文档相关
- `good first issue` - 适合新贡献者
- `help wanted` - 需要帮助
- `question` - 问题咨询

## 📞 联系我们

如果您有任何问题或需要帮助：

- 📧 邮箱：[zhong1355333@outlook.com]
- 💬 在相关 Issue 中评论
- 🐛 创建新的 Issue

## 📜 许可证

通过向此项目贡献代码，您同意您的贡献将按照项目的许可证进行授权。

---

再次感谢您的贡献！每一个贡献都让 Starchat 变得更好。