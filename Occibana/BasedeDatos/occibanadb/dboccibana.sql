PGDMP                     
    x            Occibana    12.4    12.4 X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16559    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "Occibana";
                postgres    false            	            2615    16560    hotel    SCHEMA        CREATE SCHEMA hotel;
    DROP SCHEMA hotel;
                postgres    false            
            2615    16561    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false                        2615    16562 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            �            1259    16684    calificacion    TABLE     �   CREATE TABLE hotel.calificacion (
    id integer NOT NULL,
    valor_calificacion integer NOT NULL,
    id_usuario integer NOT NULL,
    id_hotel integer NOT NULL
);
    DROP TABLE hotel.calificacion;
       hotel         heap    postgres    false    9            �           0    0    TABLE calificacion    COMMENT     L   COMMENT ON TABLE hotel.calificacion IS 'Tabla de calificaciones por hotel';
          hotel          postgres    false    225            �            1259    16687    calificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.calificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE hotel.calificacion_id_seq;
       hotel          postgres    false    9    225            �           0    0    calificacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE hotel.calificacion_id_seq OWNED BY hotel.calificacion.id;
          hotel          postgres    false    226            �            1259    16669    comentarios    TABLE     �   CREATE TABLE hotel.comentarios (
    id_coment integer NOT NULL,
    comentario text NOT NULL,
    id_hotel integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_comentario timestamp without time zone NOT NULL
);
    DROP TABLE hotel.comentarios;
       hotel         heap    postgres    false    9            �           0    0    TABLE comentarios    COMMENT     �   COMMENT ON TABLE hotel.comentarios IS 'Tabla donde se guardaran los comentarios con el id del usuario que lo realizo, el idhotel en donde se realizo el comentario y el comentario en si';
          hotel          postgres    false    224            �            1259    16667    comentarios_id_coment_seq    SEQUENCE     �   CREATE SEQUENCE hotel.comentarios_id_coment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE hotel.comentarios_id_coment_seq;
       hotel          postgres    false    9    224            �           0    0    comentarios_id_coment_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE hotel.comentarios_id_coment_seq OWNED BY hotel.comentarios.id_coment;
          hotel          postgres    false    223            �            1259    16563    hotel    TABLE     �  CREATE TABLE hotel.hotel (
    numhabitacion integer NOT NULL,
    precionoche integer NOT NULL,
    descripcion text NOT NULL,
    imagen text NOT NULL,
    nombre text NOT NULL,
    idzona integer NOT NULL,
    idhotel integer NOT NULL,
    condicion text,
    checkin text NOT NULL,
    checkout text NOT NULL,
    usuarioencargado text NOT NULL,
    idmunicipio integer NOT NULL,
    imagen_secundaria text,
    condicionesbioseguridad text NOT NULL,
    imagen_secundaria2 text
);
    DROP TABLE hotel.hotel;
       hotel         heap    postgres    false    9            �            1259    16569    hotel_habitacion    TABLE     �   CREATE TABLE hotel.hotel_habitacion (
    id integer NOT NULL,
    numpersona integer NOT NULL,
    numbano integer NOT NULL,
    idhotel integer NOT NULL,
    tipo text NOT NULL
);
 #   DROP TABLE hotel.hotel_habitacion;
       hotel         heap    postgres    false    9            �            1259    16575    hotel_habitacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_habitacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hotel.hotel_habitacion_id_seq;
       hotel          postgres    false    9    206            �           0    0    hotel_habitacion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hotel.hotel_habitacion_id_seq OWNED BY hotel.hotel_habitacion.id;
          hotel          postgres    false    207            �            1259    16577    hotel_idhotel_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_idhotel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hotel.hotel_idhotel_seq;
       hotel          postgres    false    205    9            �           0    0    hotel_idhotel_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hotel.hotel_idhotel_seq OWNED BY hotel.hotel.idhotel;
          hotel          postgres    false    208            �            1259    16579    hotelmunicipio    TABLE     b   CREATE TABLE hotel.hotelmunicipio (
    idmunicipio integer NOT NULL,
    nombre text NOT NULL
);
 !   DROP TABLE hotel.hotelmunicipio;
       hotel         heap    postgres    false    9            �            1259    16585    hotelmunicipio_idmunicipio_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelmunicipio_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hotel.hotelmunicipio_idmunicipio_seq;
       hotel          postgres    false    209    9            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hotel.hotelmunicipio_idmunicipio_seq OWNED BY hotel.hotelmunicipio.idmunicipio;
          hotel          postgres    false    210            �            1259    16587 	   hotelzona    TABLE     X   CREATE TABLE hotel.hotelzona (
    idzona integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE hotel.hotelzona;
       hotel         heap    postgres    false    9            �            1259    16593    hotelzona_idzona_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelzona_idzona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hotel.hotelzona_idzona_seq;
       hotel          postgres    false    9    211            �           0    0    hotelzona_idzona_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hotel.hotelzona_idzona_seq OWNED BY hotel.hotelzona.idzona;
          hotel          postgres    false    212            �            1259    16595    reserva    TABLE     u  CREATE TABLE hotel.reserva (
    id integer NOT NULL,
    idusuario integer,
    numpersona integer NOT NULL,
    fecha_llegada timestamp without time zone NOT NULL,
    fecha_salida timestamp without time zone NOT NULL,
    nombre text,
    apellido text NOT NULL,
    correo text NOT NULL,
    idhotel integer NOT NULL,
    mediopago text,
    estado integer NOT NULL
);
    DROP TABLE hotel.reserva;
       hotel         heap    postgres    false    9            �            1259    16601    reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE hotel.reserva_id_seq;
       hotel          postgres    false    9    213            �           0    0    reserva_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE hotel.reserva_id_seq OWNED BY hotel.reserva.id;
          hotel          postgres    false    214            �            1259    16603    token_recuperacion    TABLE     �   CREATE TABLE login.token_recuperacion (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tokengenerado text NOT NULL,
    fecha_caducidad timestamp with time zone NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL
);
 %   DROP TABLE login.token_recuperacion;
       login         heap    postgres    false    10            �            1259    16609    token_recuperacion_id_seq    SEQUENCE     �   CREATE SEQUENCE login.token_recuperacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE login.token_recuperacion_id_seq;
       login          postgres    false    215    10            �           0    0    token_recuperacion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE login.token_recuperacion_id_seq OWNED BY login.token_recuperacion.id;
          login          postgres    false    216            �            1259    16611    usuario    TABLE       CREATE TABLE login.usuario (
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo text NOT NULL,
    telefono integer,
    usuario text NOT NULL,
    contrasena text NOT NULL,
    idestado integer NOT NULL,
    fotoperfil text,
    id integer NOT NULL
);
    DROP TABLE login.usuario;
       login         heap    postgres    false    10            �            1259    16617    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    217    10            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    218            �            1259    16619    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id integer NOT NULL,
    userid integer NOT NULL,
    ip text NOT NULL,
    mac text NOT NULL,
    session text NOT NULL,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    5            �            1259    16625    acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.acceso_id_seq;
    	   seguridad          postgres    false    219    5            �           0    0    acceso_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.acceso_id_seq OWNED BY seguridad.acceso.id;
       	   seguridad          postgres    false    220            �            1259    16627    compra    TABLE     �  CREATE TABLE seguridad.compra (
    id integer NOT NULL,
    idusuario integer NOT NULL,
    numerotarjeta text NOT NULL,
    nombrepropietario text NOT NULL,
    direccionpropietario text NOT NULL,
    codigoseguridad text NOT NULL,
    cedulapropietario text NOT NULL,
    fecha_compra timestamp without time zone NOT NULL,
    fecha_vencimiento timestamp without time zone NOT NULL
);
    DROP TABLE seguridad.compra;
    	   seguridad         heap    postgres    false    5            �            1259    16633    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.compra_id_seq;
    	   seguridad          postgres    false    5    221            �           0    0    compra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.compra_id_seq OWNED BY seguridad.compra.id;
       	   seguridad          postgres    false    222            �
           2604    16689    calificacion id    DEFAULT     p   ALTER TABLE ONLY hotel.calificacion ALTER COLUMN id SET DEFAULT nextval('hotel.calificacion_id_seq'::regclass);
 =   ALTER TABLE hotel.calificacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    226    225            �
           2604    16672    comentarios id_coment    DEFAULT     |   ALTER TABLE ONLY hotel.comentarios ALTER COLUMN id_coment SET DEFAULT nextval('hotel.comentarios_id_coment_seq'::regclass);
 C   ALTER TABLE hotel.comentarios ALTER COLUMN id_coment DROP DEFAULT;
       hotel          postgres    false    224    223    224            �
           2604    16635    hotel idhotel    DEFAULT     l   ALTER TABLE ONLY hotel.hotel ALTER COLUMN idhotel SET DEFAULT nextval('hotel.hotel_idhotel_seq'::regclass);
 ;   ALTER TABLE hotel.hotel ALTER COLUMN idhotel DROP DEFAULT;
       hotel          postgres    false    208    205            �
           2604    16636    hotel_habitacion id    DEFAULT     x   ALTER TABLE ONLY hotel.hotel_habitacion ALTER COLUMN id SET DEFAULT nextval('hotel.hotel_habitacion_id_seq'::regclass);
 A   ALTER TABLE hotel.hotel_habitacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    207    206            �
           2604    16637    hotelmunicipio idmunicipio    DEFAULT     �   ALTER TABLE ONLY hotel.hotelmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('hotel.hotelmunicipio_idmunicipio_seq'::regclass);
 H   ALTER TABLE hotel.hotelmunicipio ALTER COLUMN idmunicipio DROP DEFAULT;
       hotel          postgres    false    210    209            �
           2604    16638    hotelzona idzona    DEFAULT     r   ALTER TABLE ONLY hotel.hotelzona ALTER COLUMN idzona SET DEFAULT nextval('hotel.hotelzona_idzona_seq'::regclass);
 >   ALTER TABLE hotel.hotelzona ALTER COLUMN idzona DROP DEFAULT;
       hotel          postgres    false    212    211            �
           2604    16639 
   reserva id    DEFAULT     f   ALTER TABLE ONLY hotel.reserva ALTER COLUMN id SET DEFAULT nextval('hotel.reserva_id_seq'::regclass);
 8   ALTER TABLE hotel.reserva ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    214    213            �
           2604    16640    token_recuperacion id    DEFAULT     |   ALTER TABLE ONLY login.token_recuperacion ALTER COLUMN id SET DEFAULT nextval('login.token_recuperacion_id_seq'::regclass);
 C   ALTER TABLE login.token_recuperacion ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    216    215            �
           2604    16641 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    218    217            �
           2604    16642 	   acceso id    DEFAULT     l   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id SET DEFAULT nextval('seguridad.acceso_id_seq'::regclass);
 ;   ALTER TABLE seguridad.acceso ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    220    219            �
           2604    16643 	   compra id    DEFAULT     l   ALTER TABLE ONLY seguridad.compra ALTER COLUMN id SET DEFAULT nextval('seguridad.compra_id_seq'::regclass);
 ;   ALTER TABLE seguridad.compra ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    222    221            }          0    16684    calificacion 
   TABLE DATA           S   COPY hotel.calificacion (id, valor_calificacion, id_usuario, id_hotel) FROM stdin;
    hotel          postgres    false    225   8e       |          0    16669    comentarios 
   TABLE DATA           c   COPY hotel.comentarios (id_coment, comentario, id_hotel, id_usuario, fecha_comentario) FROM stdin;
    hotel          postgres    false    224   Ue       i          0    16563    hotel 
   TABLE DATA           �   COPY hotel.hotel (numhabitacion, precionoche, descripcion, imagen, nombre, idzona, idhotel, condicion, checkin, checkout, usuarioencargado, idmunicipio, imagen_secundaria, condicionesbioseguridad, imagen_secundaria2) FROM stdin;
    hotel          postgres    false    205   re       j          0    16569    hotel_habitacion 
   TABLE DATA           Q   COPY hotel.hotel_habitacion (id, numpersona, numbano, idhotel, tipo) FROM stdin;
    hotel          postgres    false    206   �f       m          0    16579    hotelmunicipio 
   TABLE DATA           <   COPY hotel.hotelmunicipio (idmunicipio, nombre) FROM stdin;
    hotel          postgres    false    209   g       o          0    16587 	   hotelzona 
   TABLE DATA           2   COPY hotel.hotelzona (idzona, nombre) FROM stdin;
    hotel          postgres    false    211   �g       q          0    16595    reserva 
   TABLE DATA           �   COPY hotel.reserva (id, idusuario, numpersona, fecha_llegada, fecha_salida, nombre, apellido, correo, idhotel, mediopago, estado) FROM stdin;
    hotel          postgres    false    213   0h       s          0    16603    token_recuperacion 
   TABLE DATA           f   COPY login.token_recuperacion (id, user_id, tokengenerado, fecha_caducidad, fecha_inicio) FROM stdin;
    login          postgres    false    215   �h       u          0    16611    usuario 
   TABLE DATA           s   COPY login.usuario (nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil, id) FROM stdin;
    login          postgres    false    217   oi       w          0    16619    acceso 
   TABLE DATA           Z   COPY seguridad.acceso (id, userid, ip, mac, session, fecha_inicio, fecha_fin) FROM stdin;
 	   seguridad          postgres    false    219   3j       y          0    16627    compra 
   TABLE DATA           �   COPY seguridad.compra (id, idusuario, numerotarjeta, nombrepropietario, direccionpropietario, codigoseguridad, cedulapropietario, fecha_compra, fecha_vencimiento) FROM stdin;
 	   seguridad          postgres    false    221   1o       �           0    0    calificacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.calificacion_id_seq', 1, false);
          hotel          postgres    false    226            �           0    0    comentarios_id_coment_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('hotel.comentarios_id_coment_seq', 26, true);
          hotel          postgres    false    223            �           0    0    hotel_habitacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hotel.hotel_habitacion_id_seq', 37, true);
          hotel          postgres    false    207            �           0    0    hotel_idhotel_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hotel.hotel_idhotel_seq', 38, true);
          hotel          postgres    false    208            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hotel.hotelmunicipio_idmunicipio_seq', 8, true);
          hotel          postgres    false    210            �           0    0    hotelzona_idzona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.hotelzona_idzona_seq', 5, true);
          hotel          postgres    false    212            �           0    0    reserva_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('hotel.reserva_id_seq', 9, true);
          hotel          postgres    false    214            �           0    0    token_recuperacion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('login.token_recuperacion_id_seq', 3, true);
          login          postgres    false    216            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('login.usuario_id_seq', 17, true);
          login          postgres    false    218            �           0    0    acceso_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('seguridad.acceso_id_seq', 227, true);
       	   seguridad          postgres    false    220            �           0    0    compra_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('seguridad.compra_id_seq', 16, true);
       	   seguridad          postgres    false    222            �
           2606    16694    calificacion calificacion_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hotel.calificacion
    ADD CONSTRAINT calificacion_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY hotel.calificacion DROP CONSTRAINT calificacion_pkey;
       hotel            postgres    false    225            �
           2606    16645 &   hotel_habitacion hotel_habitacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY hotel.hotel_habitacion
    ADD CONSTRAINT hotel_habitacion_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY hotel.hotel_habitacion DROP CONSTRAINT hotel_habitacion_pkey;
       hotel            postgres    false    206            �
           2606    16647    hotel hotel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hotel.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (idhotel);
 9   ALTER TABLE ONLY hotel.hotel DROP CONSTRAINT hotel_pkey;
       hotel            postgres    false    205            �
           2606    16649 "   hotelmunicipio hotelmunicipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hotel.hotelmunicipio
    ADD CONSTRAINT hotelmunicipio_pkey PRIMARY KEY (idmunicipio);
 K   ALTER TABLE ONLY hotel.hotelmunicipio DROP CONSTRAINT hotelmunicipio_pkey;
       hotel            postgres    false    209            �
           2606    16651    hotelzona hotelzona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY hotel.hotelzona
    ADD CONSTRAINT hotelzona_pkey PRIMARY KEY (idzona);
 A   ALTER TABLE ONLY hotel.hotelzona DROP CONSTRAINT hotelzona_pkey;
       hotel            postgres    false    211            �
           2606    16677     comentarios pk_hotel_comentarios 
   CONSTRAINT     d   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT pk_hotel_comentarios PRIMARY KEY (id_coment);
 I   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT pk_hotel_comentarios;
       hotel            postgres    false    224            �
           2606    16653    reserva reserva_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY hotel.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY hotel.reserva DROP CONSTRAINT reserva_pkey;
       hotel            postgres    false    213            �
           2606    16655 *   token_recuperacion token_recuperacion_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY login.token_recuperacion
    ADD CONSTRAINT token_recuperacion_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY login.token_recuperacion DROP CONSTRAINT token_recuperacion_pkey;
       login            postgres    false    215            �
           2606    16657    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    217            �
           2606    16659    compra compra_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY seguridad.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY seguridad.compra DROP CONSTRAINT compra_pkey;
    	   seguridad            postgres    false    221            �
           2606    16661    acceso pk_seguridad_acceso 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT pk_seguridad_acceso PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT pk_seguridad_acceso;
    	   seguridad            postgres    false    219            �
           2606    16679    comentarios fk_hotel_idusuario    FK CONSTRAINT     �   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT fk_hotel_idusuario FOREIGN KEY (id_usuario) REFERENCES login.usuario(id) NOT VALID;
 G   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT fk_hotel_idusuario;
       hotel          postgres    false    224    217    2784            �
           2606    16662    acceso fk_acceso_usuario    FK CONSTRAINT     z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT fk_acceso_usuario FOREIGN KEY (userid) REFERENCES login.usuario(id);
 E   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT fk_acceso_usuario;
    	   seguridad          postgres    false    2784    217    219            }      x������ � �      |      x������ � �      i   s  x����n�0E��W�?x�]w]TYfQe�J�����&�~{mHh���4����ݹ����j����-�)[����ht��k���0i��K	m$�-���J�zm���8��x�	2ج�֝P���
�ួ(�� ���>�u�|0+.NO��(�n��-���Yu�y�ɀU\�E�
���O`���d4�G���&H~BN'�\��-���Wy���\h�fω��\�&4�K%�K��.�Ʉ,�.�Xf���)ҡFe��>��1�,�7É )�l���ެ�8�H'Ƚ#q��U��8g��g�"F1���^��fX�w˄��ŕ�ԭ3�Y��{g�-w������Y#�,� � 7Όj      j   z   x�U�K�0D��� j;I{6�������#������с3>�q�Z���*��HP����v�?�V�K�'���~��<-3Iq�l�	=�H֩*����I�'���ߒ�{.~�|H.'"�*7�      m   \   x��;@@���UX��_-��Љ�#�����)�	�Ѕ��\�F/������m"��m/�H��#R��:�t��n���'r��N�z��Bq      o   5   x�3���/*I�2�.-�2�tN�+)��2��/�2S�L9���3S��=... m+      q   �   x�3�4�4�4202�54�54R00�#��%B�1/�(���)�(/1�3�81�$3)����!=713G/9?��Ȍ3ƏӀ��d#t��t�H4�b�%��F�F�(&���&���:�x��sr��qqq !C�      s   �   x�]λ�0E�ښ�����gI#Z��#�@�S�Kn�k,g���Q�
Ř�nf^Ūf�k�d�L��s=���p1] ���Sۉ���@P�5�����oN �C��JѴU=F�
ᘳ��<�v���~�
x�|��������;�      u   �   x�m�;� ������W��ki��$� d����:j����6�P�����U
)�IJ��#���v�"/֛90
X�#��{�;Շ���!��(;�v��9�ˊ�/�n[�|�iE^��z�/πC�&e���P�D�FL`z��o��q�i:T��k�˚��y)p%o�d%g�=�Nkf      w   �  x��XIr�8<˯�4�aᱣc��H�v����z�D�ئF�g���@VV���Fр���G�D�/���5�����8=�����~�״���Fh���i���cAbȲ#�t
��D���|�SL�ѻ�9B.�d���x�jC��ҭ�G�� ^�� հ�֠�(�����$-�F�3���M=�N���8m�����t�_?ԣz��$pp����!���Yz�ˑ5�	r�z$h��DZ-�N�b��v.�oN�	�=)�h���TAuڂ\7x��k��]��cJj��0!�������]�v�:�r�_��R�߰,����`ӧ�+���^�5���]T[��rw<�%�6����|�������SX+��^�\_��:�����[���e~�֟`c�@��	��9
�Q�Y�廳g9҆#ڞ*��|���l�	G���=�*9Nw.V�~m��z²"������,�v59,OL��v���u}��~��G��IxH��ZQX� PY�AX@aU�֡ot�]ً�W�.�'�a�݊X@0Q<��"i}Y4.	۶
yXn�'�����w�v�z\�����$H�%�oA6�׊�-K|A���^$t�����<��3	�q����ON�8V�z�u���2_M���;*��1��j#���4jL=E1�)�V6y{�{�&Vqw
����Q4�o��J߃C>(��ʠ�l��E�T�GtQI� $P����\�+��a��1�WH3����n=]N&����5�`Rj�ꤎ��uY���fG���_�n�b����� �O�� z|�g�V�>�*��zq{����l<Ƿ�ܫ�eցMͣn�]� B~��|��)��Eܭ'�za�� i���Z��ڗ�Kâ�2t+��7b5������xl@��B�"?�{�<��Kr$>~a�S����^��,Bj*M�"����>?�I �ܩ�k8��6xu�!XP�"06� 8�!�sKC�������)��a�c�`m����ڼ?��Ք�{����ؼ?��խC'�v�X͇���K����ҭ��4r��0�? ���5y� u�j<bHA�;�c��j��]��-D}���%�Aڵ4�nϗL��$��`�R�PJH����Y]���K#s�O�뤀�:-V���l�.���>���.�Qu9�9�R�B�ũ���M�M)]qt����/��N����4�y�	��ƊƃC��V?ش���B���鞰�o�hR�����c^^^�i��      y   g  x�ݔM�1F�U��L�_K�Y��e{�d���@��,{1h����,�x����+kfUյ��ɪ%"�< D�Ȑڃzj+���,������}d���b}!׊k���S� �G����!�D�se�s�u�j=��>k�1m%wW����j�4�YT��8��d���δ�[��  �@� ��7�x	��| |E�GN��g�~ǯd�o�MJ�ȫ�3�N��m�4��~Yyމt�|{�/&��&�Љ�nR��V��$%p������Ɣ`0��*=T��4���&�w]���N<�sS<J]�,ly��S���jB߿8�T��s�����#tΩ�0y�4�H|#h��1P��&����y� ^��{     