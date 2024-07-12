import request from '@/utils/request'

//**项目**

//添加
export function add(data) {
  return request({
    url: '/project/addProject',
    method: 'post',
    data
  })
}

//删除
export function deleteById(id) {
  return request({
    url: '/project/deleteProjectById/' + id,
    method: 'get'
  })
}

//修改
export function update(data) {
  return request({
    url: '/project/updateProject',
    method: 'post',
    data
  })
}

//详情
export function getById(id) {
  return request({
    url: '/project/getProjectById/' + id,
    method: 'get'
  })
}

//列表
export function listPage(data) {
  return request({
    url: '/project/getProjectListPageVo',
    method: 'post',
    data
  })
}

