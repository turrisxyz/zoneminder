package ONVIF::Device::Types::ConfigDescription;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Device::Types::ConfigDescription::_ConfigDescription::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Parameters_of :ATTR(:get<Parameters>);
my %Messages_of :ATTR(:get<Messages>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Parameters
        Messages
        Extension

    ) ],
    {
        'Parameters' => \%Parameters_of,
        'Messages' => \%Messages_of,
        'Extension' => \%Extension_of,
    },
    {
        'Parameters' => 'ONVIF::Device::Types::ItemListDescription',

        'Messages' => 'ONVIF::Device::Types::ConfigDescription::_Messages',
        'Extension' => 'ONVIF::Device::Types::ConfigDescriptionExtension',
    },
    {

        'Parameters' => 'Parameters',
        'Messages' => 'Messages',
        'Extension' => 'Extension',
    }
);

} # end BLOCK




package ONVIF::Device::Types::ConfigDescription::_Messages;
use strict;
use warnings;
{
our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(ONVIF::Device::Types::MessageDescription);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Source_of :ATTR(:get<Source>);
my %Key_of :ATTR(:get<Key>);
my %Data_of :ATTR(:get<Data>);
my %Extension_of :ATTR(:get<Extension>);
my %ParentTopic_of :ATTR(:get<ParentTopic>);

__PACKAGE__->_factory(
    [ qw(        Source
        Key
        Data
        Extension
        ParentTopic

    ) ],
    {
        'Source' => \%Source_of,
        'Key' => \%Key_of,
        'Data' => \%Data_of,
        'Extension' => \%Extension_of,
        'ParentTopic' => \%ParentTopic_of,
    },
    {
        'Source' => 'ONVIF::Device::Types::ItemListDescription',
        'Key' => 'ONVIF::Device::Types::ItemListDescription',
        'Data' => 'ONVIF::Device::Types::ItemListDescription',
        'Extension' => 'ONVIF::Device::Types::MessageDescriptionExtension',
        'ParentTopic' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'Source' => 'Source',
        'Key' => 'Key',
        'Data' => 'Data',
        'Extension' => 'Extension',
        'ParentTopic' => 'ParentTopic',
    }
);

} # end BLOCK







}



package ONVIF::Device::Types::ConfigDescription::_ConfigDescription::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);

__PACKAGE__->_factory(
    [ qw(
        Name
    ) ],
    {

        Name => \%Name_of,
    },
    {
        Name => 'SOAP::WSDL::XSD::Typelib::Builtin::QName',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Device::Types::ConfigDescription

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ConfigDescription from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Parameters


=item * Messages


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::ConfigDescription
   Parameters =>  { # ONVIF::Device::Types::ItemListDescription
     SimpleItemDescription => ,
     ElementItemDescription => ,
     Extension =>  { # ONVIF::Device::Types::ItemListDescriptionExtension
     },
   },
   Messages =>  {
     ParentTopic =>  $some_value, # string
   },
   Extension =>  { # ONVIF::Device::Types::ConfigDescriptionExtension
   },
 },



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Device::Types::ConfigDescription::_ConfigDescription::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * Name

 XML Type of the Configuration (e.g. "tt::LineDetector"). 



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::QName|SOAP::WSDL::XSD::Typelib::Builtin::QName>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

