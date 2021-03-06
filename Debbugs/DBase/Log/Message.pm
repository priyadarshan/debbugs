# TODO: Implement 'stale' checks, so that there is no need to explicitly
#	write out a record, before closing.

package Debbugs::DBase::Log::Message;

use strict;

BEGIN {
	Debbugs::DBase::Log::Register("\7", "Message", "Debbugs::DBase::Log::Message");
}


sub new
{
    my $self  = {};
    $self->{TYPE}	= "Message";
    $self->{MSG}	= shift;
    bless ($self);
    return $self;
}

END { }       # module clean-up code here (global destructor)


1;
