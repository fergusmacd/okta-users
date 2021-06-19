output "my_org_users" {
  value = { for id, user in okta_user.users : id => user.id}
}