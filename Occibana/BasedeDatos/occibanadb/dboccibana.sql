PGDMP         1            
    x            Occibana    12.4    12.4 X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41498    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.utf8' LC_CTYPE = 'Spanish_Latin America.utf8';
    DROP DATABASE "Occibana";
                postgres    false                        2615    41499    hotel    SCHEMA        CREATE SCHEMA hotel;
    DROP SCHEMA hotel;
                postgres    false                        2615    41500    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false            
            2615    41501 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false            �            1259    41502    calificacion    TABLE     �   CREATE TABLE hotel.calificacion (
    id integer NOT NULL,
    valor_calificacion integer NOT NULL,
    id_usuario integer NOT NULL,
    id_hotel integer NOT NULL
);
    DROP TABLE hotel.calificacion;
       hotel         heap    postgres    false    8            �           0    0    TABLE calificacion    COMMENT     L   COMMENT ON TABLE hotel.calificacion IS 'Tabla de calificaciones por hotel';
          hotel          postgres    false    205            �            1259    41505    calificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.calificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE hotel.calificacion_id_seq;
       hotel          postgres    false    205    8            �           0    0    calificacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE hotel.calificacion_id_seq OWNED BY hotel.calificacion.id;
          hotel          postgres    false    206            �            1259    41507    comentarios    TABLE     �   CREATE TABLE hotel.comentarios (
    id_coment integer NOT NULL,
    comentario text NOT NULL,
    id_hotel integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_comentario timestamp without time zone NOT NULL
);
    DROP TABLE hotel.comentarios;
       hotel         heap    postgres    false    8            �           0    0    TABLE comentarios    COMMENT     �   COMMENT ON TABLE hotel.comentarios IS 'Tabla donde se guardaran los comentarios con el id del usuario que lo realizo, el idhotel en donde se realizo el comentario y el comentario en si';
          hotel          postgres    false    207            �            1259    41513    comentarios_id_coment_seq    SEQUENCE     �   CREATE SEQUENCE hotel.comentarios_id_coment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE hotel.comentarios_id_coment_seq;
       hotel          postgres    false    207    8            �           0    0    comentarios_id_coment_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE hotel.comentarios_id_coment_seq OWNED BY hotel.comentarios.id_coment;
          hotel          postgres    false    208            �            1259    41515    hotel    TABLE       CREATE TABLE hotel.hotel (
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
    promcalificacion integer
);
    DROP TABLE hotel.hotel;
       hotel         heap    postgres    false    8            �            1259    41521    hotel_habitacion    TABLE     �   CREATE TABLE hotel.hotel_habitacion (
    id integer NOT NULL,
    numpersona integer NOT NULL,
    numbano integer NOT NULL,
    idhotel integer NOT NULL,
    tipo text NOT NULL
);
 #   DROP TABLE hotel.hotel_habitacion;
       hotel         heap    postgres    false    8            �            1259    41527    hotel_habitacion_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_habitacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hotel.hotel_habitacion_id_seq;
       hotel          postgres    false    8    210            �           0    0    hotel_habitacion_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hotel.hotel_habitacion_id_seq OWNED BY hotel.hotel_habitacion.id;
          hotel          postgres    false    211            �            1259    41529    hotel_idhotel_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotel_idhotel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hotel.hotel_idhotel_seq;
       hotel          postgres    false    8    209            �           0    0    hotel_idhotel_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hotel.hotel_idhotel_seq OWNED BY hotel.hotel.idhotel;
          hotel          postgres    false    212            �            1259    41531    hotelmunicipio    TABLE     b   CREATE TABLE hotel.hotelmunicipio (
    idmunicipio integer NOT NULL,
    nombre text NOT NULL
);
 !   DROP TABLE hotel.hotelmunicipio;
       hotel         heap    postgres    false    8            �            1259    41537    hotelmunicipio_idmunicipio_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelmunicipio_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hotel.hotelmunicipio_idmunicipio_seq;
       hotel          postgres    false    8    213            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hotel.hotelmunicipio_idmunicipio_seq OWNED BY hotel.hotelmunicipio.idmunicipio;
          hotel          postgres    false    214            �            1259    41539 	   hotelzona    TABLE     X   CREATE TABLE hotel.hotelzona (
    idzona integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE hotel.hotelzona;
       hotel         heap    postgres    false    8            �            1259    41545    hotelzona_idzona_seq    SEQUENCE     �   CREATE SEQUENCE hotel.hotelzona_idzona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hotel.hotelzona_idzona_seq;
       hotel          postgres    false    8    215            �           0    0    hotelzona_idzona_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hotel.hotelzona_idzona_seq OWNED BY hotel.hotelzona.idzona;
          hotel          postgres    false    216            �            1259    41547    reserva    TABLE     r  CREATE TABLE hotel.reserva (
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
    calificacion integer
);
    DROP TABLE hotel.reserva;
       hotel         heap    postgres    false    8            �            1259    41553    reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE hotel.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE hotel.reserva_id_seq;
       hotel          postgres    false    8    217            �           0    0    reserva_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE hotel.reserva_id_seq OWNED BY hotel.reserva.id;
          hotel          postgres    false    218            �            1259    41555    token_recuperacion    TABLE     �   CREATE TABLE login.token_recuperacion (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tokengenerado text NOT NULL,
    fecha_caducidad timestamp with time zone NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL
);
 %   DROP TABLE login.token_recuperacion;
       login         heap    postgres    false    6            �            1259    41561    token_recuperacion_id_seq    SEQUENCE     �   CREATE SEQUENCE login.token_recuperacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE login.token_recuperacion_id_seq;
       login          postgres    false    219    6            �           0    0    token_recuperacion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE login.token_recuperacion_id_seq OWNED BY login.token_recuperacion.id;
          login          postgres    false    220            �            1259    41563    usuario    TABLE       CREATE TABLE login.usuario (
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
       login         heap    postgres    false    6            �            1259    41569    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    6    221            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    222            �            1259    41571    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id integer NOT NULL,
    userid integer NOT NULL,
    ip text NOT NULL,
    mac text NOT NULL,
    session text NOT NULL,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    10            �            1259    41577    acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.acceso_id_seq;
    	   seguridad          postgres    false    223    10            �           0    0    acceso_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.acceso_id_seq OWNED BY seguridad.acceso.id;
       	   seguridad          postgres    false    224            �            1259    41579    compra    TABLE     �  CREATE TABLE seguridad.compra (
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
    	   seguridad         heap    postgres    false    10            �            1259    41585    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE seguridad.compra_id_seq;
    	   seguridad          postgres    false    225    10            �           0    0    compra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE seguridad.compra_id_seq OWNED BY seguridad.compra.id;
       	   seguridad          postgres    false    226            �
           2604    41587    calificacion id    DEFAULT     p   ALTER TABLE ONLY hotel.calificacion ALTER COLUMN id SET DEFAULT nextval('hotel.calificacion_id_seq'::regclass);
 =   ALTER TABLE hotel.calificacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    206    205            �
           2604    41588    comentarios id_coment    DEFAULT     |   ALTER TABLE ONLY hotel.comentarios ALTER COLUMN id_coment SET DEFAULT nextval('hotel.comentarios_id_coment_seq'::regclass);
 C   ALTER TABLE hotel.comentarios ALTER COLUMN id_coment DROP DEFAULT;
       hotel          postgres    false    208    207            �
           2604    41589    hotel idhotel    DEFAULT     l   ALTER TABLE ONLY hotel.hotel ALTER COLUMN idhotel SET DEFAULT nextval('hotel.hotel_idhotel_seq'::regclass);
 ;   ALTER TABLE hotel.hotel ALTER COLUMN idhotel DROP DEFAULT;
       hotel          postgres    false    212    209            �
           2604    41590    hotel_habitacion id    DEFAULT     x   ALTER TABLE ONLY hotel.hotel_habitacion ALTER COLUMN id SET DEFAULT nextval('hotel.hotel_habitacion_id_seq'::regclass);
 A   ALTER TABLE hotel.hotel_habitacion ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    211    210            �
           2604    41591    hotelmunicipio idmunicipio    DEFAULT     �   ALTER TABLE ONLY hotel.hotelmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('hotel.hotelmunicipio_idmunicipio_seq'::regclass);
 H   ALTER TABLE hotel.hotelmunicipio ALTER COLUMN idmunicipio DROP DEFAULT;
       hotel          postgres    false    214    213            �
           2604    41592    hotelzona idzona    DEFAULT     r   ALTER TABLE ONLY hotel.hotelzona ALTER COLUMN idzona SET DEFAULT nextval('hotel.hotelzona_idzona_seq'::regclass);
 >   ALTER TABLE hotel.hotelzona ALTER COLUMN idzona DROP DEFAULT;
       hotel          postgres    false    216    215            �
           2604    41593 
   reserva id    DEFAULT     f   ALTER TABLE ONLY hotel.reserva ALTER COLUMN id SET DEFAULT nextval('hotel.reserva_id_seq'::regclass);
 8   ALTER TABLE hotel.reserva ALTER COLUMN id DROP DEFAULT;
       hotel          postgres    false    218    217            �
           2604    41594    token_recuperacion id    DEFAULT     |   ALTER TABLE ONLY login.token_recuperacion ALTER COLUMN id SET DEFAULT nextval('login.token_recuperacion_id_seq'::regclass);
 C   ALTER TABLE login.token_recuperacion ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    220    219            �
           2604    41595 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    222    221            �
           2604    41596 	   acceso id    DEFAULT     l   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id SET DEFAULT nextval('seguridad.acceso_id_seq'::regclass);
 ;   ALTER TABLE seguridad.acceso ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    224    223            �
           2604    41597 	   compra id    DEFAULT     l   ALTER TABLE ONLY seguridad.compra ALTER COLUMN id SET DEFAULT nextval('seguridad.compra_id_seq'::regclass);
 ;   ALTER TABLE seguridad.compra ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    226    225            i          0    41502    calificacion 
   TABLE DATA           S   COPY hotel.calificacion (id, valor_calificacion, id_usuario, id_hotel) FROM stdin;
    hotel          postgres    false    205   ne       k          0    41507    comentarios 
   TABLE DATA           c   COPY hotel.comentarios (id_coment, comentario, id_hotel, id_usuario, fecha_comentario) FROM stdin;
    hotel          postgres    false    207   �e       m          0    41515    hotel 
   TABLE DATA           �   COPY hotel.hotel (numhabitacion, precionoche, descripcion, imagen, nombre, idzona, idhotel, condicion, checkin, checkout, usuarioencargado, idmunicipio, imagen_secundaria, condicionesbioseguridad, imagen_secundaria2, promcalificacion) FROM stdin;
    hotel          postgres    false    209   �f       n          0    41521    hotel_habitacion 
   TABLE DATA           Q   COPY hotel.hotel_habitacion (id, numpersona, numbano, idhotel, tipo) FROM stdin;
    hotel          postgres    false    210   wh       q          0    41531    hotelmunicipio 
   TABLE DATA           <   COPY hotel.hotelmunicipio (idmunicipio, nombre) FROM stdin;
    hotel          postgres    false    213   i       s          0    41539 	   hotelzona 
   TABLE DATA           2   COPY hotel.hotelzona (idzona, nombre) FROM stdin;
    hotel          postgres    false    215   mi       u          0    41547    reserva 
   TABLE DATA           �   COPY hotel.reserva (id, idusuario, numpersona, fecha_llegada, fecha_salida, nombre, apellido, correo, idhotel, mediopago, calificacion) FROM stdin;
    hotel          postgres    false    217   �i       w          0    41555    token_recuperacion 
   TABLE DATA           f   COPY login.token_recuperacion (id, user_id, tokengenerado, fecha_caducidad, fecha_inicio) FROM stdin;
    login          postgres    false    219   �j       y          0    41563    usuario 
   TABLE DATA           s   COPY login.usuario (nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil, id) FROM stdin;
    login          postgres    false    221   �k       {          0    41571    acceso 
   TABLE DATA           Z   COPY seguridad.acceso (id, userid, ip, mac, session, fecha_inicio, fecha_fin) FROM stdin;
 	   seguridad          postgres    false    223   Il       }          0    41579    compra 
   TABLE DATA           �   COPY seguridad.compra (id, idusuario, numerotarjeta, nombrepropietario, direccionpropietario, codigoseguridad, cedulapropietario, fecha_compra, fecha_vencimiento) FROM stdin;
 	   seguridad          postgres    false    225   �t       �           0    0    calificacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.calificacion_id_seq', 1, false);
          hotel          postgres    false    206            �           0    0    comentarios_id_coment_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('hotel.comentarios_id_coment_seq', 40, true);
          hotel          postgres    false    208            �           0    0    hotel_habitacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hotel.hotel_habitacion_id_seq', 37, true);
          hotel          postgres    false    211            �           0    0    hotel_idhotel_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hotel.hotel_idhotel_seq', 38, true);
          hotel          postgres    false    212            �           0    0    hotelmunicipio_idmunicipio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hotel.hotelmunicipio_idmunicipio_seq', 8, true);
          hotel          postgres    false    214            �           0    0    hotelzona_idzona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hotel.hotelzona_idzona_seq', 5, true);
          hotel          postgres    false    216            �           0    0    reserva_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('hotel.reserva_id_seq', 19, true);
          hotel          postgres    false    218            �           0    0    token_recuperacion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('login.token_recuperacion_id_seq', 3, true);
          login          postgres    false    220            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('login.usuario_id_seq', 17, true);
          login          postgres    false    222            �           0    0    acceso_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('seguridad.acceso_id_seq', 271, true);
       	   seguridad          postgres    false    224            �           0    0    compra_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('seguridad.compra_id_seq', 16, true);
       	   seguridad          postgres    false    226            �
           2606    41599    calificacion calificacion_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hotel.calificacion
    ADD CONSTRAINT calificacion_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY hotel.calificacion DROP CONSTRAINT calificacion_pkey;
       hotel            postgres    false    205            �
           2606    41601 &   hotel_habitacion hotel_habitacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY hotel.hotel_habitacion
    ADD CONSTRAINT hotel_habitacion_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY hotel.hotel_habitacion DROP CONSTRAINT hotel_habitacion_pkey;
       hotel            postgres    false    210            �
           2606    41603    hotel hotel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY hotel.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (idhotel);
 9   ALTER TABLE ONLY hotel.hotel DROP CONSTRAINT hotel_pkey;
       hotel            postgres    false    209            �
           2606    41605 "   hotelmunicipio hotelmunicipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hotel.hotelmunicipio
    ADD CONSTRAINT hotelmunicipio_pkey PRIMARY KEY (idmunicipio);
 K   ALTER TABLE ONLY hotel.hotelmunicipio DROP CONSTRAINT hotelmunicipio_pkey;
       hotel            postgres    false    213            �
           2606    41607    hotelzona hotelzona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY hotel.hotelzona
    ADD CONSTRAINT hotelzona_pkey PRIMARY KEY (idzona);
 A   ALTER TABLE ONLY hotel.hotelzona DROP CONSTRAINT hotelzona_pkey;
       hotel            postgres    false    215            �
           2606    41609     comentarios pk_hotel_comentarios 
   CONSTRAINT     d   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT pk_hotel_comentarios PRIMARY KEY (id_coment);
 I   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT pk_hotel_comentarios;
       hotel            postgres    false    207            �
           2606    41611    reserva reserva_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY hotel.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY hotel.reserva DROP CONSTRAINT reserva_pkey;
       hotel            postgres    false    217            �
           2606    41613 *   token_recuperacion token_recuperacion_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY login.token_recuperacion
    ADD CONSTRAINT token_recuperacion_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY login.token_recuperacion DROP CONSTRAINT token_recuperacion_pkey;
       login            postgres    false    219            �
           2606    41615    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    221            �
           2606    41617    compra compra_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY seguridad.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY seguridad.compra DROP CONSTRAINT compra_pkey;
    	   seguridad            postgres    false    225            �
           2606    41619    acceso pk_seguridad_acceso 
   CONSTRAINT     [   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT pk_seguridad_acceso PRIMARY KEY (id);
 G   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT pk_seguridad_acceso;
    	   seguridad            postgres    false    223            �
           2606    41620    comentarios fk_hotel_idusuario    FK CONSTRAINT     �   ALTER TABLE ONLY hotel.comentarios
    ADD CONSTRAINT fk_hotel_idusuario FOREIGN KEY (id_usuario) REFERENCES login.usuario(id) NOT VALID;
 G   ALTER TABLE ONLY hotel.comentarios DROP CONSTRAINT fk_hotel_idusuario;
       hotel          postgres    false    2788    221    207            �
           2606    41625    acceso fk_acceso_usuario    FK CONSTRAINT     z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT fk_acceso_usuario FOREIGN KEY (userid) REFERENCES login.usuario(id);
 E   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT fk_acceso_usuario;
    	   seguridad          postgres    false    221    223    2788            i      x������ � �      k   Y  x���Kn�0D��)x���,�Ў0 �A$��Cpf,{1��UWW���lW3��{U�*���`�����89M�&>�y\���&��]��kJ��6�'��A}�s]��\�g[֢�!�3\F��C��]�Yg�l�9�㸖�X�a1W��N�����'+��b� )i&5���j�ҹ��vXcz��fVS]̱��]Z�i�|�uQ�@�[�� �fQ�mh��ϯ��}	Hfnm������t�:����e���w�M6yȄ6�4����;{�r���9z���j���V뿵�Pܣ���%֜���u���ј!��,CL��C�S�N�WX�䳃�!%�~�Z�-ش�      m   s  x����n�0���)x�1�n���,n��	�v�d���
�O��	���~��N�;�2x���[���nksѨ�w[�X3�:�_dg�u�|�+.NO���i�2�[�U]����	 ���Ԁ�2)l%/B6�Y��{!Emz��=���[ެ�6�!��/T��,p>1%�D�1���iBA����\(.�dj�t���183��uH
�R�J�t 6z��ws Ln1g�b��#���JJ�".z�����ƍ�0�wŶ'�\�8ŵ����;��~[&��).HnV($�E��-a�k��E���o�oո{�Gf}�]��zm��磳�]��,���8���H6*$KWݵ=�d��0�`����K��      n   z   x�U�K�0D��� j;I{6�������#������с3>�q�Z���*��HP����v�?�V�K�'���~��<-3Iq�l�	=�H֩*����I�'���ߒ�{.~�|H.'"�*7�      q   \   x��;@@���UX��_-��Љ�#�����)�	�Ѕ��\�F/������m"��m/�H��#R��:�t��n���'r��N�z��Bq      s   5   x�3���/*I�2�.-�2�tN�+)��2��/�2S�L9���3S��=... m+      u     x����N�@�ϳO�l33�B�$L���!�zٶ�ִK����.kb@.|����� A#�$��� ��7c�����n�9���ۆ8�;����5gPT��sY�y�����P"��2φ������t�@�Hfg��(ˇ���up$�q�	s�9��1���`��Z-����H������2X��쳱��0v����tЛ���ס(�KJ�,n$IOD���@A��@�;�����a���3(?-�jrk3�j�w�A�Յ�����f%��¾��      w   �   x�]λ�0E�ښ�����gI#Z��#�@�S�Kn�k,g���Q�
Ř�nf^Ūf�k�d�L��s=���p1] ���Sۉ���@P�5�����oN �C��JѴU=F�
ᘳ��<�v���~�
x�|��������;�      y   �   x�m�;� ������W��ki��$� d����:j����6�P�����U
)�IJ��#���v�"/֛90
X�#��{�;Շ���!��(;�v��9�ˊ�/�n[�|�iE^��z�/πC�&e���P�D�FL`z��o��q�i:T��k�˚��y)p%o�d%g�=�Nkf      {   9  x��ZIr#9<K��4�a�ml��P����$�|�82Y-)��m̶��ɝ��� �"?�ev���!rf��������ty�=�/���|�,eq�M�����Dx�Aq�y$��k��)�|yr�,=R���ZLs9�r�눃c5�`�!؄F����[��,8	�"�l6y�8h���'')XJ�+|�o��t��y��f�����_�w��/|�����Y�~�ɜgN�]��ןN���X󯟌]^li��P)~Dgr�͗�R�(.�+l��iίS�N�ً?�?Nϧ�ߘ�P.�g	���7��S6QEt������}�W9_d{<�dy���������Hձd��+��z|E�Bď���tM0�X�N5v�xD�e��
U����ɖ�V���a|��vzO�_?�d��x��B'�ԫ��S]���i�KJ��'�/����=��ևH�u"ɳv踑c���w4%>$��f���e�2���E.��x�|�?=͏�/u	��"ό�A�#����P�]����_owo��y3���&��;�����ȳKQ�s�����z��?6���e<叫]7��K@�cZ@q$Cd%Ê�
�v��qT3Ei�lD�7�(�áo�ș'�e�2B̙��0D�����$�Q�F�QdC��������E��j�Fa�}(�(�b�%�X#�Sxd��G���{$kJm�I�+
��6��D�v1�)8]��a�!��[I94�F<,X�j+C�ƅ8�$�J����ڊ�J�n����}a1H�<0�Ql]���a�)���KC��؉�uZ�1��3�p�L�qY�NIo"O$�F���S�B� ����B��Mw���ϥK4lk{�u��$�|��"�0�G,.y���%���P�J[�\���d��-V���j�q?�_�dw��OX�Q�U�c�L����z_Xl
�Y����=a�ʖ]��F-�?x�~�Œ�BR���Wﾞ�eÖ��o��.!~�v����c�?�b;^�3�OX-
�J����5�\�瞰��ց�Dc{dR_<z�B��L�{%���밽��&�����W�0J�F�I`C���􌢘r�-��ɩ/.�`��,B�Zl+D�J/X���X�",s[��`��*�?|����}��o�m=Kݨ��ME+��^n���{��2���g��M�d��nU�cX�#q�&��]n��|�������`��O&����푁P~���$t�&�a�s��(�`j��$�r�U���kH�}62��f;J���l*�:�����Ԁ�4)F*��oI���llv���������~~�쎯����nr��T����X#�#Ú�U趲�zf�5��d�'~�L�:����[���3��:���gG���(��3
��s�)�vM�����D=�șd�r�	F</#��2e�.Y}�(����O��#�KV_؀�p�cY���s�398GO.`a��È����+���g�~$�K?���a��*
��}U�EnrS?�>�)���7�<|/�Bi>������pO:�Ş�r�NF���vy$ ]�,��Ju8�]����y1��~F}�ڧ�,�]KZ�g�l���Ӧ5��9��[7�%��iP�%�+�~_��<�m�/c�.'<Y����ۮ{C�#��F�{.c��x�N
eB{�-�4�p���e�b��v
�����T�m(ll�J����$.�	{ 4,\�BE��-�BsOV�&�b=�xP�#h���$�;��q�{�^�垻�W�d�汭>�{�J3���&o�[���8_)�b?w;��-I�mު�}9����7iJ.��%a��-��3_;�І�����������	��"��ه��TL$̐0��+��͓X��b��-e�����M��C�IYDW���t,���^�zHE;@K�R �N�t���t3t�!�X�>X�������mF�����1R\a���J�����0����z:���M}�%a�����P������t�w���|^�������3`Ow���e=1fk��]�6S�%���2ֻLΧ��f����/��tL��>��O�b�]&�_��{||�?����      }   g  x�ݔM�1F�U��L�_K�Y��e{�d���@��,{1h����,�x����+kfUյ��ɪ%"�< D�Ȑڃzj+���,������}d���b}!׊k���S� �G����!�D�se�s�u�j=��>k�1m%wW����j�4�YT��8��d���δ�[��  �@� ��7�x	��| |E�GN��g�~ǯd�o�MJ�ȫ�3�N��m�4��~Yyމt�|{�/&��&�Љ�nR��V��$%p������Ɣ`0��*=T��4���&�w]���N<�sS<J]�,ly��S���jB߿8�T��s�����#tΩ�0y�4�H|#h��1P��&����y� ^��{     