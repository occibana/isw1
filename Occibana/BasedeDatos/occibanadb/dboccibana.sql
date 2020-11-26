PGDMP     6    8            
    x            Occibana    12.4    12.4 X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41785    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.utf8' LC_CTYPE = 'Spanish_Latin America.utf8';
    DROP DATABASE "Occibana";
                postgres    false            
            2615    41786    hotel    SCHEMA        CREATE SCHEMA hotel;
    DROP SCHEMA hotel;
                postgres    false                        2615    41787    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false                        2615    41788 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            �            1259    41789    calificacion    TABLE     �   CREATE TABLE hotel.calificacion (
    id integer NOT NULL,
    valor_calificacion integer NOT NULL,
    id_usuario integer NOT NULL,
    id_hotel integer NOT NULL
);
    DROP TABLE hotel.calificacion;
       hotel         heap    postgres    false    10            �           0    0    TABLE calificacion    COMMENT     L   COMMENT ON TABLE hotel.calificacion IS 'Tabla de calificaciones por hotel';
          hotel          postgres    false    205            �            1259    41792    calificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.calificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE hotel.calificacion_id_seq;
       hotel          postgres    false    205    10            �           0    0    calificacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE hotel.calificacion_id_seq OWNED BY hotel.calificacion.id;
          hotel          postgres    false    206            �            1259    41794    comentarios    TABLE     �   CREATE TABLE hotel.comentarios (
    id_coment integer NOT NULL,
    comentario text NOT NULL,
    id_hotel integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_comentario timestamp without time zone NOT NULL
);
    DROP TABLE hotel.comentarios;
       hotel         heap    postgres    false    10            �           0    0    TABLE comentarios    COMMENT     �   COMMENT ON TABLE hotel.comentarios IS 'Tabla donde se guardaran los comentarios con el id del usuario que lo realizo, el idhotel en donde se realizo el comentario y el comentario en si';
          hotel          postgres    false    207            �            1259    41800    comentarios_id_coment_seq    SEQUENCE     �   CREATE SEQUENCE hotel.comentarios_id_coment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE hotel.comentarios_id_coment_seq;
       hotel          postgres    false    207    10            �           0    0    comentarios_id_coment_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE hotel.comentarios_id_coment_seq OWNED BY hotel.comentarios.id_coment;
          hotel          postgres    false    208            �            1259    41802    hotel    TABLE     V  CREATE TABLE hotel.hotel (
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
    imagen_secundaria2 text,
    promcalificacion integer,
    direccion text,
    precionochedoble integer,
    precionochepremium integer
);
    DROP TABLE hotel.hotel;
       hotel         heap    postgres    false    10            �            1259    41808    hotel_habitacion    TABLE     �   CREATE TABLE hotel.hotel_habitacion (
    id integer NOT NULL,
    numpersona integer NOT NULL,
    numbano integer NOT NULL,
    idhotel integer NOT NULL,
    tipo text NOT NULL,
    numcamas integer,
    precio integer
);
 #   DROP TABLE hotel.hotel_habitacion;
       hotel         heap    postgres    false    10            �            1259    41814    hotel_habitacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_habitacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hotel.hotel_habitacion_id_seq;
       hotel          postgres    false    10    210            �           0    0    hotel_habitacion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hotel.hotel_habitacion_id_seq OWNED BY hotel.hotel_habitacion.id;
          hotel          postgres    false    211            �            1259    41816    hotel_idhotel_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_idhotel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hotel.hotel_idhotel_seq;
       hotel          postgres    false    10    209            �           0    0    hotel_idhotel_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hotel.hotel_idhotel_seq OWNED BY hotel.hotel.idhotel;
          hotel          postgres    false    212            �            1259    41818    hotelmunicipio    TABLE     b   CREATE TABLE hotel.hotelmunicipio (
    idmunicipio integer NOT NULL,
    nombre text NOT NULL
);
 !   DROP TABLE hotel.hotelmunicipio;
       hotel         heap    postgres    false    10            �            1259    41824    hotelmunicipio_idmunicipio_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelmunicipio_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hotel.hotelmunicipio_idmunicipio_seq;
       hotel          postgres    false    10    213            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hotel.hotelmunicipio_idmunicipio_seq OWNED BY hotel.hotelmunicipio.idmunicipio;
          hotel          postgres    false    214            �            1259    41826 	   hotelzona    TABLE     X   CREATE TABLE hotel.hotelzona (
    idzona integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE hotel.hotelzona;
       hotel         heap    postgres    false    10            �            1259    41832    hotelzona_idzona_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelzona_idzona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hotel.hotelzona_idzona_seq;
       hotel          postgres    false    10    215            �           0    0    hotelzona_idzona_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hotel.hotelzona_idzona_seq OWNED BY hotel.hotelzona.idzona;
          hotel          postgres    false    216            �            1259    41834    reserva    TABLE     �  CREATE TABLE hotel.reserva (
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
    calificacion integer,
    limite_comentario timestamp without time zone NOT NULL,
    id_habitacion integer NOT NULL
);
    DROP TABLE hotel.reserva;
       hotel         heap    postgres    false    10            �            1259    41840    reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE hotel.reserva_id_seq;
       hotel          postgres    false    10    217            �           0    0    reserva_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE hotel.reserva_id_seq OWNED BY hotel.reserva.id;
          hotel          postgres    false    218            �            1259    41842    token_recuperacion    TABLE     �   CREATE TABLE login.token_recuperacion (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tokengenerado text NOT NULL,
    fecha_caducidad timestamp with time zone NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL
);
 %   DROP TABLE login.token_recuperacion;
       login         heap    postgres    false    4            �            1259    41848    token_recuperacion_id_seq    SEQUENCE     �   CREATE SEQUENCE login.token_recuperacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE login.token_recuperacion_id_seq;
       login          postgres    false    219    4            �           0    0    token_recuperacion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE login.token_recuperacion_id_seq OWNED BY login.token_recuperacion.id;
          login          postgres    false    220            �            1259    41850    usuario    TABLE     
  CREATE TABLE login.usuario (
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo text NOT NULL,
    telefono bigint,
    usuario text NOT NULL,
    contrasena text NOT NULL,
    idestado integer NOT NULL,
    fotoperfil text,
    id integer NOT NULL
);
    DROP TABLE login.usuario;
       login         heap    postgres    false    4            �            1259    41856    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    4    221            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    222            �            1259    41858    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id integer NOT NULL,
    userid integer NOT NULL,
    ip text NOT NULL,
    mac text NOT NULL,
    session text NOT NULL,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    8            �            1259    41864    acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.acceso_id_seq;
    	   seguridad          postgres    false    223    8            �           0    0    acceso_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.acceso_id_seq OWNED BY seguridad.acceso.id;
       	   seguridad          postgres    false    224            �            1259    41866    compra    TABLE     �  CREATE TABLE seguridad.compra (
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
    	   seguridad         heap    postgres    false    8            �            1259    41872    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.compra_id_seq;
    	   seguridad          postgres    false    225    8            �           0    0    compra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.compra_id_seq OWNED BY seguridad.compra.id;
       	   seguridad          postgres    false    226            �
           2604    41874    calificacion id    DEFAULT     p   ALTER TABLE ONLY hotel.calificacion ALTER COLUMN id SET DEFAULT nextval('hotel.calificacion_id_seq'::regclass);
 =   ALTER TABLE hotel.calificacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    206    205            �
           2604    41875    comentarios id_coment    DEFAULT     |   ALTER TABLE ONLY hotel.comentarios ALTER COLUMN id_coment SET DEFAULT nextval('hotel.comentarios_id_coment_seq'::regclass);
 C   ALTER TABLE hotel.comentarios ALTER COLUMN id_coment DROP DEFAULT;
       hotel          postgres    false    208    207            �
           2604    41876    hotel idhotel    DEFAULT     l   ALTER TABLE ONLY hotel.hotel ALTER COLUMN idhotel SET DEFAULT nextval('hotel.hotel_idhotel_seq'::regclass);
 ;   ALTER TABLE hotel.hotel ALTER COLUMN idhotel DROP DEFAULT;
       hotel          postgres    false    212    209            �
           2604    41877    hotel_habitacion id    DEFAULT     x   ALTER TABLE ONLY hotel.hotel_habitacion ALTER COLUMN id SET DEFAULT nextval('hotel.hotel_habitacion_id_seq'::regclass);
 A   ALTER TABLE hotel.hotel_habitacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    211    210            �
           2604    41878    hotelmunicipio idmunicipio    DEFAULT     �   ALTER TABLE ONLY hotel.hotelmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('hotel.hotelmunicipio_idmunicipio_seq'::regclass);
 H   ALTER TABLE hotel.hotelmunicipio ALTER COLUMN idmunicipio DROP DEFAULT;
       hotel          postgres    false    214    213            �
           2604    41879    hotelzona idzona    DEFAULT     r   ALTER TABLE ONLY hotel.hotelzona ALTER COLUMN idzona SET DEFAULT nextval('hotel.hotelzona_idzona_seq'::regclass);
 >   ALTER TABLE hotel.hotelzona ALTER COLUMN idzona DROP DEFAULT;
       hotel          postgres    false    216    215            �
           2604    41880 
   reserva id    DEFAULT     f   ALTER TABLE ONLY hotel.reserva ALTER COLUMN id SET DEFAULT nextval('hotel.reserva_id_seq'::regclass);
 8   ALTER TABLE hotel.reserva ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    218    217            �
           2604    41881    token_recuperacion id    DEFAULT     |   ALTER TABLE ONLY login.token_recuperacion ALTER COLUMN id SET DEFAULT nextval('login.token_recuperacion_id_seq'::regclass);
 C   ALTER TABLE login.token_recuperacion ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    220    219            �
           2604    41882 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    222    221            �
           2604    41883 	   acceso id    DEFAULT     l   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id SET DEFAULT nextval('seguridad.acceso_id_seq'::regclass);
 ;   ALTER TABLE seguridad.acceso ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    224    223            �
           2604    41884 	   compra id    DEFAULT     l   ALTER TABLE ONLY seguridad.compra ALTER COLUMN id SET DEFAULT nextval('seguridad.compra_id_seq'::regclass);
 ;   ALTER TABLE seguridad.compra ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    226    225            i          0    41789    calificacion 
   TABLE DATA           S   COPY hotel.calificacion (id, valor_calificacion, id_usuario, id_hotel) FROM stdin;
    hotel          postgres    false    205   �f       k          0    41794    comentarios 
   TABLE DATA           c   COPY hotel.comentarios (id_coment, comentario, id_hotel, id_usuario, fecha_comentario) FROM stdin;
    hotel          postgres    false    207   �f       m          0    41802    hotel 
   TABLE DATA           (  COPY hotel.hotel (numhabitacion, precionoche, descripcion, imagen, nombre, idzona, idhotel, condicion, checkin, checkout, usuarioencargado, idmunicipio, imagen_secundaria, condicionesbioseguridad, imagen_secundaria2, promcalificacion, direccion, precionochedoble, precionochepremium) FROM stdin;
    hotel          postgres    false    209   9g       n          0    41808    hotel_habitacion 
   TABLE DATA           c   COPY hotel.hotel_habitacion (id, numpersona, numbano, idhotel, tipo, numcamas, precio) FROM stdin;
    hotel          postgres    false    210   	i       q          0    41818    hotelmunicipio 
   TABLE DATA           <   COPY hotel.hotelmunicipio (idmunicipio, nombre) FROM stdin;
    hotel          postgres    false    213   j       s          0    41826 	   hotelzona 
   TABLE DATA           2   COPY hotel.hotelzona (idzona, nombre) FROM stdin;
    hotel          postgres    false    215   oj       u          0    41834    reserva 
   TABLE DATA           �   COPY hotel.reserva (id, idusuario, numpersona, fecha_llegada, fecha_salida, nombre, apellido, correo, idhotel, mediopago, calificacion, limite_comentario, id_habitacion) FROM stdin;
    hotel          postgres    false    217   �j       w          0    41842    token_recuperacion 
   TABLE DATA           f   COPY login.token_recuperacion (id, user_id, tokengenerado, fecha_caducidad, fecha_inicio) FROM stdin;
    login          postgres    false    219   �k       y          0    41850    usuario 
   TABLE DATA           s   COPY login.usuario (nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil, id) FROM stdin;
    login          postgres    false    221   9l       {          0    41858    acceso 
   TABLE DATA           Z   COPY seguridad.acceso (id, userid, ip, mac, session, fecha_inicio, fecha_fin) FROM stdin;
 	   seguridad          postgres    false    223   �l       }          0    41866    compra 
   TABLE DATA           �   COPY seguridad.compra (id, idusuario, numerotarjeta, nombrepropietario, direccionpropietario, codigoseguridad, cedulapropietario, fecha_compra, fecha_vencimiento) FROM stdin;
 	   seguridad          postgres    false    225   9v       �           0    0    calificacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.calificacion_id_seq', 1, false);
          hotel          postgres    false    206            �           0    0    comentarios_id_coment_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('hotel.comentarios_id_coment_seq', 42, true);
          hotel          postgres    false    208            �           0    0    hotel_habitacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hotel.hotel_habitacion_id_seq', 69, true);
          hotel          postgres    false    211            �           0    0    hotel_idhotel_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hotel.hotel_idhotel_seq', 46, true);
          hotel          postgres    false    212            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hotel.hotelmunicipio_idmunicipio_seq', 8, true);
          hotel          postgres    false    214            �           0    0    hotelzona_idzona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.hotelzona_idzona_seq', 5, true);
          hotel          postgres    false    216            �           0    0    reserva_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('hotel.reserva_id_seq', 40, true);
          hotel          postgres    false    218            �           0    0    token_recuperacion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('login.token_recuperacion_id_seq', 4, true);
          login          postgres    false    220            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('login.usuario_id_seq', 19, true);
          login          postgres    false    222            �           0    0    acceso_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('seguridad.acceso_id_seq', 381, true);
       	   seguridad          postgres    false    224            �           0    0    compra_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('seguridad.compra_id_seq', 17, true);
       	   seguridad          postgres    false    226            �
           2606    41886    calificacion calificacion_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hotel.calificacion
    ADD CONSTRAINT calificacion_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY hotel.calificacion DROP CONSTRAINT calificacion_pkey;
       hotel            postgres    false    205            �
           2606    41888 &   hotel_habitacion hotel_habitacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY hotel.hotel_habitacion
    ADD CONSTRAINT hotel_habitacion_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY hotel.hotel_habitacion DROP CONSTRAINT hotel_habitacion_pkey;
       hotel            postgres    false    210            �
           2606    41890    hotel hotel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hotel.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (idhotel);
 9   ALTER TABLE ONLY hotel.hotel DROP CONSTRAINT hotel_pkey;
       hotel            postgres    false    209            �
           2606    41892 "   hotelmunicipio hotelmunicipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hotel.hotelmunicipio
    ADD CONSTRAINT hotelmunicipio_pkey PRIMARY KEY (idmunicipio);
 K   ALTER TABLE ONLY hotel.hotelmunicipio DROP CONSTRAINT hotelmunicipio_pkey;
       hotel            postgres    false    213            �
           2606    41894    hotelzona hotelzona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY hotel.hotelzona
    ADD CONSTRAINT hotelzona_pkey PRIMARY KEY (idzona);
 A   ALTER TABLE ONLY hotel.hotelzona DROP CONSTRAINT hotelzona_pkey;
       hotel            postgres    false    215            �
           2606    41896     comentarios pk_hotel_comentarios 
   CONSTRAINT     d   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT pk_hotel_comentarios PRIMARY KEY (id_coment);
 I   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT pk_hotel_comentarios;
       hotel            postgres    false    207            �
           2606    41898    reserva reserva_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY hotel.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY hotel.reserva DROP CONSTRAINT reserva_pkey;
       hotel            postgres    false    217            �
           2606    41900 *   token_recuperacion token_recuperacion_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY login.token_recuperacion
    ADD CONSTRAINT token_recuperacion_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY login.token_recuperacion DROP CONSTRAINT token_recuperacion_pkey;
       login            postgres    false    219            �
           2606    41902    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    221            �
           2606    41904    compra compra_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY seguridad.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY seguridad.compra DROP CONSTRAINT compra_pkey;
    	   seguridad            postgres    false    225            �
           2606    41906    acceso pk_seguridad_acceso 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT pk_seguridad_acceso PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT pk_seguridad_acceso;
    	   seguridad            postgres    false    223            �
           2606    41907    comentarios fk_hotel_idusuario    FK CONSTRAINT     �   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT fk_hotel_idusuario FOREIGN KEY (id_usuario) REFERENCES login.usuario(id) NOT VALID;
 G   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT fk_hotel_idusuario;
       hotel          postgres    false    2788    221    207            �
           2606    41912    acceso fk_acceso_usuario    FK CONSTRAINT     z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT fk_acceso_usuario FOREIGN KEY (userid) REFERENCES login.usuario(id);
 E   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT fk_acceso_usuario;
    	   seguridad          postgres    false    221    223    2788            i      x������ � �      k   T   x�]�+�0 Pݞ���/�v,31�!���<�\`}�. ���HQ%��ޣ��dNt�mރ�w�s���D���Z.�WD� ��-      m   �  x����n�0���S蜘�HK��L�)��"6�(*E:��{���h;�� J�_�鿣�9]�O���~���~�߫}Hƙqe�����n�#�d��^\��[V�@��p�.�F�A���S�U����Q5�؇ޤ�+;�s���u��� �sL�,\u���JUoq\8%(ȶad݄ۈ#�6y3���5p����?�6�S^	R��jIİ�!�m�*�#jJ}5� �� or�VG�)a���憭4���BK�&y[T�^��k[�l�Y�����U���e7U�Q�qFN�37�0��������<^u��������D���<��B�&�!D樻�y�f�q�����c�cP�cH���0��2{�Y�MK���(g���l^l[�詮��W�S$�$�A�N�^g��XRX
	�R�e���Z�66�z����T���      n   �   x�u�K�@�םSx�<Z`��`�ʂ�x ����ЙT���_��_��7�쮧~Zh��_���|;]R���F���.��u��f�X�J��vP����YG{�iٛL�Lf�Mv��6C��?����R�N&���k�V� f0mIj��$Р��x�KP�T�+�5p�G~�9
+mJnҶ�쨗�#�����O-�\A,ˇT��X�c(�{zÍ��c�����      q   \   x��;@@���UX��_-��Љ�#�����)�	�Ѕ��\�F/������m"��m/�H��#R��:�t��n���'r��N�z��Bq      s   5   x�3���/*I�2�.-�2�tN�+)��2��/�2S�L9���3S��=... m+      u   �   x����j�@F�3O��?j4�J��.Z(�U6�D��bߟNjk�&��M��7pߙ;2*P��\ ���s��3������������?��)��l�F�C�bV�S�X��_��e���5���)J/�.[�'0�jf���LY>�qU�=�U����{pC�/��gZ�NY2�t�p&E�b�(�����wѾ�S��=�!�L��_0��d�x�抾�c2	�=0�.���q�4��,
�<�n��ݘD��&�Z�      w   f   x�Uɻ� ����<��Z���_t3��J�Vw�f�BN���!b��=���e���{`in֙R��{#|��<Oȡ2�A�V~���:j�/���      y   �   x�U��� E�ǿB���l7�.Ox�g�6@��[c4q�9�����AÆ�a�CB��M	���쇃�=�gн��UV�� +���I��ߵ?�^��Tz(Na����f*7���ʑ�c��9�>�Q
!^�#5�      {   [	  x��Yˎ�8<w����DJv�=����3���뗲s0U��(�HT�J�I1�A�����	�{�	��H���?���?�aM�h�ھK��!1ޚa_�$�.��~xt��_Iu9���Ɠ: 0?�|$���J�_�8���/����o�=�@��7$Oh �'>/���|���r�p�(|�'?m��|c���?�+m��>O�=`82�#s����p��p�&����zD�SD�G����@yD��w:�M�>	m���;@��2��H��ñ8��T<���
�w��07��������oX��  .GRݔ���m�|B^�$������c�ct�F�?|B^�$�����	'/<#�����X_Ù>_
���G��ШEPۮ��vIe{��+�����b�^�H݀oVh���cP.'���߮O�Ѝ�X;���| �j���x-.GV�}/�@"�Ƿ��x�1О!�����z��駸=>��z�)�/�)��=~ ��+ɾMO���?�K���uum�&�0�2P��З��	a� �8)u���]�v�3�|��o�;���o\��PvzJ��:q�?�.���uK�t	à�2,ǯ���v+���v�:����4G5c�t�i[�X<��h�*0R��޽��}B\Vs�J�ޅ5��l����wa}kl@
�Օ�T��wщ:k�)j3U�S(�.B��@���آ~���-���m�W�lU��>����"
/��:hү:8�&���.�vγAV!�C����m3;�\�{s�-�GJ1Mi��T܏�C�w�*kXm�W�����`�)[���Ok��p���S���+������u��M\<��BD��^���%�d���d1|¼��� O��:|�u�v��ڗ�(�B��RO�4�G:Q�7U���G�6��m�P����iNOы������=����G �dC9h����c�vM�%L�(nZ�k����9Y�,\��_���TR������e�]`���O>��'���춆����LR��$᱌HA����������ʼf|b�ᮔV���#������C~b�9�Q�ŷ~}��)@!�b)���f"�Ҽ���'M=U��
�IE�:ˆ�?�uK��*z��ʺ�^p��m��+���Old�� x#��ٵ>6$#+4_:(��C*�����ݵ>����P������8C*���K�<��a�����]�9��a��\-Iۄ�汩����{?�5$_�<�xPy7u�4Ρ�����XfMU�Q��r�8��uw���u�E/���x�x&P�6xt�}(2��zS]�O(�0�n+.�v����y�]���y�QP�SV,�B���=��}?+2�
�9���1�K��]���+�	�p���+ϗP/����>T���q[�q�\�cS|�e���o�v�����5ڕ"<�.!�}I3��V�ɡ���!�KZ�4�Y�����;��xD���d��l%8�^����DP�� �|eK�}�,�XQ��ј�CT�_a��h<�L'=�%'o���T'�CN�q���m�jxB�EM5��\qk@d�?iD9y�7�zK�&��К=0�*I�B�ɲ�kV}���:�4J�6Q+�J���:2K�o�v6�i����utu���}ӏϤRq<���$]WXa�%�Bp�*��м�{+�:��*���I�V^q�a��j���&qS�E^}7�s]�5����&ɓ��Z��m��*�Z���t{�,�� ���m��W۩�u��Wt�	���1[B�x��x�fY]q�u�,8�������ˊ̜Pg;h��d�&��Ty���j*���fJ�M�Y,^�.τ[�a���'��wц}������@i^ep���m�2�m���s�7&U�]覔�!���h��6�<��$+h�t]��H��<g�v���!�	m�a!�.������C��e?��8���q�m�6a,�9Nr���h���o�xl�����eɠf37E�և�ڱ[z��1C���q��]��zs-��̸��̺������Mt�\�Y�K�X%��ʽ��[����b�g��2-�Y-8$�߸�5��	�3�Tu�[�Fu�	���vj��Y=�o���Xi^�ĩ����s���iK��xlBG\�7ewQ���7��P�c����z'!�0޶+n`��e^�`|�fp_�uKڮ�q����{}�c�M�`��W�9�vǦ�Gk�Gm]CX�}��y�����/��~�|�h��ʵ�5K�q��b�����1�32���u�)�4A�X�h��d�Rn[ZG�p�'6�F����ϟ?��I�      }   �   x�m�1nD1k�SDJ�+LΒT��������x�<�=�'X��Q1ۭQusqs�Vw@kRN���T� �ÿ�~�y���x�����آ��N����R;"���FU>�ͥ	i�.3��>�����6+̳i���-r��X���D'������sє%
�W���_E�G�     