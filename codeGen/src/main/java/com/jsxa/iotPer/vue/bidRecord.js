import request from '@/utils/request'

//**竞拍记录**

//添加
export function add(data) {
  return request({
    url: '/bidRecord/addBidRecord',
    method: 'post',
    data
  })
}

//删除
export function deleteById(id) {
  return request({
    url: '/bidRecord/deleteBidRecordById/' + id,
    method: 'get'
  })
}

//修改
export function update(data) {
  return request({
    url: '/bidRecord/updateBidRecord',
    method: 'post',
    data
  })
}

//详情
export function getById(id) {
  return request({
    url: '/bidRecord/getBidRecordById/' + id,
    method: 'get'
  })
}

//列表
export function listPage(data) {
  return request({
    url: '/bidRecord/getBidRecordListPageVo',
    method: 'post',
    data
  })
}

