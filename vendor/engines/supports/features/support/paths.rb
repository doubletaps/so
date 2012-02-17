module NavigationHelpers
  module Refinery
    module Supports
      def path_to(page_name)
        case page_name
        when /the list of supports/
          admin_supports_path

         when /the new support form/
          new_admin_support_path
        else
          nil
        end
      end
    end
  end
end
