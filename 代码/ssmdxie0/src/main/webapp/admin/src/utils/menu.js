const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告通知","menuJump":"列表","tableName":"gonggaotongzhi"}],"menu":"公告通知管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"自修室","menuJump":"列表","tableName":"zixiushi"}],"menu":"自修室管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"座位预约","menuJump":"列表","tableName":"zuoweiyuyue"}],"menu":"座位预约管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"公告通知列表","menuJump":"列表","tableName":"gonggaotongzhi"}],"menu":"公告通知模块"},{"child":[{"buttons":["查看","座位预约"],"menu":"自修室列表","menuJump":"列表","tableName":"zixiushi"}],"menu":"自修室模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["座位预约"],"menu":"自修室","menuJump":"列表","tableName":"zixiushi"}],"menu":"自修室管理"},{"child":[{"buttons":["查看","预约取消"],"menu":"座位预约","menuJump":"列表","tableName":"zuoweiyuyue"}],"menu":"座位预约管理"},{"child":[{"buttons":["查看"],"menu":"预约取消","menuJump":"列表","tableName":"yuyuequxiao"}],"menu":"预约取消管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"公告通知列表","menuJump":"列表","tableName":"gonggaotongzhi"}],"menu":"公告通知模块"},{"child":[{"buttons":["查看","座位预约"],"menu":"自修室列表","menuJump":"列表","tableName":"zixiushi"}],"menu":"自修室模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"}]
    }
}
export default menu;
