#md5  
DGST(1SSL)                                    OpenSSL                                    DGST(1SSL)



###name
```
       dgst, md5, md4, md2, sha1, sha, mdc2, ripemd160 - message digests

```
###synopsis
```
       openssl dgst [-md5|-md4|-md2|-sha1|-sha|-mdc2|-ripemd160|-dss1] [-c] [-d] [-hex] [-binary]
       [-hmac arg] [-non-fips-allow] [-out filename] [-sign filename] [-keyform arg] [-passin arg]
       [-verify filename] [-prverify filename] [-signature filename] [-hmac key] [file...]

       [md5|md4|md2|sha1|sha|mdc2|ripemd160] [-c] [-d] [file...]

```
###description
```
       The digest functions output the message digest of a supplied file or files in hexadecimal
       form. They can also be used for digital signing and verification.

```
###options
```
       -c  print out the digest in two digit groups separated by colons, only relevant if hex
           format output is used.

       -d  print out BIO debugging information.

       -hex
           digest is to be output as a hex dump. This is the default case for a "normal" digest as
           opposed to a digital signature.

       -binary
           output the digest or signature in binary form.

       -hmac arg
           set the HMAC key to "arg".

       -non-fips-allow
           allow use of non FIPS digest.

       -out filename
           filename to output to, or standard output by default.

       -sign filename
           digitally sign the digest using the private key in "filename".

       -keyform arg
           Specifies the key format to sign digest with. Only PEM and ENGINE formats are supported
           by the dgst command.

       -engine id
           Use engine id for operations (including private key storage).  This engine is not used
           as source for digest algorithms, unless it is also specified in the configuration file.

       -sigopt nm:v
           Pass options to the signature algorithm during sign or verify operations.  Names and
           values of these options are algorithm-specific.

       -passin arg
           the private key password source. For more information about the format of arg see the
           PASS PHRASE ARGUMENTS section in openssl(1).

       -verify filename
           verify the signature using the the public key in "filename".  The output is either
           "Verification OK" or "Verification Failure".

       -prverify filename
           verify the signature using the  the private key in "filename".

       -signature filename
           the actual signature to verify.

       -hmac key
           create a hashed MAC using "key".

       -mac alg
           create MAC (keyed Message Authentication Code). The most popular MAC algorithm is HMAC
           (hash-based MAC), but there are other MAC algorithms which are not based on hash, for
           instance gost-mac algorithm, supported by ccgost engine. MAC keys and other options
           should be set via -macopt parameter.

       -macopt nm:v
           Passes options to MAC algorithm, specified by -mac key.  Following options are supported
           by both by HMAC and gost-mac:

           key:string
                   Specifies MAC key as alphnumeric string (use if key contain printable characters
                   only). String length must conform to any restrictions of the MAC algorithm for
                   example exactly 32 chars for gost-mac.

           hexkey:string
                   Specifies MAC key in hexadecimal form (two hex digits per byte).  Key length
                   must conform to any restrictions of the MAC algorithm for example exactly 32
                   chars for gost-mac.

       -rand file(s)
           a file or files containing random data used to seed the random number generator, or an
           EGD socket (see RAND_egd(3)).  Multiple files can be specified separated by a OS-
           dependent character.  The separator is ; for MS-Windows, , for OpenVMS, and : for all
           others.

       file...
           file or files to digest. If no files are specified then standard input is used.

```
###notes
```
       The digest of choice for all new applications is SHA1. Other digests are however still
       widely used.

       If you wish to sign or verify data using the DSA algorithm then the dss1 digest must be
       used.

       A source of random numbers is required for certain signing algorithms, in particular DSA.

       The signing and verify options should only be used if a single file is being signed or
       verified.



1.0.1f                                       2014-10-16                                  DGST(1SSL)
```
```
