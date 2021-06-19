locals {
  users = {
    user_one = {
      first_name : "User",
      last_name : "One"
    }
    user_two = {
      first_name : "User",
      last_name : "Two"
    }
    user_three = {
      first_name : "User",
      last_name : "Three"
    }
  }

}

resource "okta_user" "users" {
  for_each           = local.users
  first_name         = each.value.first_name
  last_name          = each.value.last_name
  login              = "john.smith@example.com"
  email              = "${each.value.last_name}-john.smith@example.com"
  city               = "New York"
  cost_center        = "10"
  country_code       = "US"
  department         = "IT"
  display_name       = "Dr. ${each.value.last_name} John Smith"
  division           = "Acquisitions"
  employee_number    = "111111"
  honorific_prefix   = "Dr."
  honorific_suffix   = "Jr."
  locale             = "en_US"
  manager            = "Jimbo"
  manager_id         = "222222"
  middle_name        = "John"
  mobile_phone       = "1112223333"
  nick_name          = "Johnny"
  organization       = "Testing Inc."
  postal_address     = "1234 Testing St."
  preferred_language = "en-us"
  primary_phone      = "4445556666"
  profile_url        = "http://www.example.com/profile"
  second_email       = "${each.value.last_name}-john.smith.fun@example.com"
  state              = "NY"
  street_address     = "5678 Testing Ave."
  timezone           = "America/New_York"
  title              = "Director"
  user_type          = "Employee"
  zip_code           = "11111"
}
