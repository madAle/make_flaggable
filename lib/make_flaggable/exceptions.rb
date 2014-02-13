module MakeFlaggable
  module Exceptions
    class AlreadyFlaggedError < StandardError
      def initialize
        super "The flaggable was already flagged by this flagger."
      end
    end

    class NotFlaggedError < StandardError
      def initialize
        super "The flaggable was not flagged by the flagger."
      end
    end

    class InvalidFlaggableError < StandardError
      def initialize
        super "Invalid flaggable."
      end
    end
    
    class InvalidFlagError < StandardError
      def initialize
        super "Invalid flag."
      end
    end
    
    class MissingFlagsError < StandardError
      def initialize
        super "Missing options :flags for make_flaggable"
      end
    end
  end
end
