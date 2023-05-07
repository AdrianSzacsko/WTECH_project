PGDMP                         {           laravel_project    14.2    14.1 o    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24108    laravel_project    DATABASE     m   CREATE DATABASE laravel_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Slovak_Slovakia.1252';
    DROP DATABASE laravel_project;
                postgres    false            �            1259    25179 	   addresses    TABLE     �   CREATE TABLE public.addresses (
    id bigint NOT NULL,
    street character varying(30),
    street_number integer,
    postcode character varying(5)
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    25178    addresses_id_seq    SEQUENCE     y   CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.addresses_id_seq;
       public          postgres    false    219            �           0    0    addresses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;
          public          postgres    false    218            �            1259    25254    cart_contents    TABLE     �   CREATE TABLE public.cart_contents (
    id bigint NOT NULL,
    cart_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer DEFAULT 1 NOT NULL
);
 !   DROP TABLE public.cart_contents;
       public         heap    postgres    false            �            1259    25253    cart_contents_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cart_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cart_contents_id_seq;
       public          postgres    false    231            �           0    0    cart_contents_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cart_contents_id_seq OWNED BY public.cart_contents.id;
          public          postgres    false    230            �            1259    25240    carts    TABLE     �  CREATE TABLE public.carts (
    id bigint NOT NULL,
    profile_id bigint NOT NULL,
    delivery character varying(20),
    delivery_price double precision DEFAULT '0'::double precision,
    payment character varying(20),
    payment_price double precision DEFAULT '0'::double precision,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    25239    carts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    229            �           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    228            �            1259    25155    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    25154    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    215            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    214            �            1259    24110 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    24109    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    210            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    209            �            1259    25287    order_contents    TABLE     �   CREATE TABLE public.order_contents (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint,
    quantity integer DEFAULT 1 NOT NULL
);
 "   DROP TABLE public.order_contents;
       public         heap    postgres    false            �            1259    25286    order_contents_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.order_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.order_contents_id_seq;
       public          postgres    false    235            �           0    0    order_contents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.order_contents_id_seq OWNED BY public.order_contents.id;
          public          postgres    false    234            �            1259    25272    orders    TABLE       CREATE TABLE public.orders (
    id bigint NOT NULL,
    profile_id bigint,
    delivery character varying(20),
    delivery_price double precision DEFAULT '0'::double precision,
    payment character varying(20),
    payment_price double precision DEFAULT '0'::double precision,
    total_price double precision DEFAULT '0'::double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(256) NOT NULL,
    phone_prefix character varying(3) NOT NULL,
    phone_number character varying(9) NOT NULL,
    street character varying(30) NOT NULL,
    street_number integer NOT NULL,
    postcode character varying(5) NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    25271    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    233            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    232            �            1259    25147    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    25167    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    25166    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    217            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    216            �            1259    25226    photos    TABLE     �   CREATE TABLE public.photos (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    photo_path character varying(512) NOT NULL
);
    DROP TABLE public.photos;
       public         heap    postgres    false            �            1259    25225    photos_id_seq    SEQUENCE     v   CREATE SEQUENCE public.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.photos_id_seq;
       public          postgres    false    227            �           0    0    photos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;
          public          postgres    false    226            �            1259    25214    product_statistics    TABLE     �   CREATE TABLE public.product_statistics (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    count integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.product_statistics;
       public         heap    postgres    false            �            1259    25213    product_statistics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.product_statistics_id_seq;
       public          postgres    false    225            �           0    0    product_statistics_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.product_statistics_id_seq OWNED BY public.product_statistics.id;
          public          postgres    false    224            �            1259    25202    products    TABLE     v  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    price double precision NOT NULL,
    description character varying(4096) DEFAULT ''::character varying NOT NULL,
    short_description character varying(4096) DEFAULT ''::character varying NOT NULL,
    category character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    product_size character varying(255) NOT NULL,
    CONSTRAINT products_category_check CHECK (((category)::text = ANY ((ARRAY['flowers'::character varying, 'trees'::character varying, 'fruits'::character varying, 'vegetables'::character varying])::text[]))),
    CONSTRAINT products_product_size_check CHECK (((product_size)::text = ANY ((ARRAY['small'::character varying, 'medium'::character varying, 'large'::character varying])::text[])))
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    25201    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    223            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    222            �            1259    25186    profiles    TABLE     !  CREATE TABLE public.profiles (
    id bigint NOT NULL,
    address_id bigint,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(256),
    password character varying(100),
    phone_prefix character varying(3),
    phone_number character varying(9),
    role character varying(255) DEFAULT 'user'::character varying NOT NULL,
    CONSTRAINT profiles_role_check CHECK (((role)::text = ANY ((ARRAY['admin'::character varying, 'user'::character varying, 'temp'::character varying])::text[])))
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    25185    profiles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    221            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    220            �            1259    25137    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25136    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            �           2604    25182    addresses id    DEFAULT     l   ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);
 ;   ALTER TABLE public.addresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    25257    cart_contents id    DEFAULT     t   ALTER TABLE ONLY public.cart_contents ALTER COLUMN id SET DEFAULT nextval('public.cart_contents_id_seq'::regclass);
 ?   ALTER TABLE public.cart_contents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    25243    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    25158    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24113    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    25290    order_contents id    DEFAULT     v   ALTER TABLE ONLY public.order_contents ALTER COLUMN id SET DEFAULT nextval('public.order_contents_id_seq'::regclass);
 @   ALTER TABLE public.order_contents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    25275 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    25170    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    25229 	   photos id    DEFAULT     f   ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);
 8   ALTER TABLE public.photos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    25217    product_statistics id    DEFAULT     ~   ALTER TABLE ONLY public.product_statistics ALTER COLUMN id SET DEFAULT nextval('public.product_statistics_id_seq'::regclass);
 D   ALTER TABLE public.product_statistics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    25205    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    25189    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    25140    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            z          0    25179 	   addresses 
   TABLE DATA           H   COPY public.addresses (id, street, street_number, postcode) FROM stdin;
    public          postgres    false    219   F�       �          0    25254    cart_contents 
   TABLE DATA           J   COPY public.cart_contents (id, cart_id, product_id, quantity) FROM stdin;
    public          postgres    false    231   i�       �          0    25240    carts 
   TABLE DATA           y   COPY public.carts (id, profile_id, delivery, delivery_price, payment, payment_price, created_at, updated_at) FROM stdin;
    public          postgres    false    229   ��       v          0    25155    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    215   ��       q          0    24110 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    210   ��       �          0    25287    order_contents 
   TABLE DATA           L   COPY public.order_contents (id, order_id, product_id, quantity) FROM stdin;
    public          postgres    false    235   �       �          0    25272    orders 
   TABLE DATA           �   COPY public.orders (id, profile_id, delivery, delivery_price, payment, payment_price, total_price, created_at, updated_at, first_name, last_name, email, phone_prefix, phone_number, street, street_number, postcode) FROM stdin;
    public          postgres    false    233   �       t          0    25147    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    213   .�       x          0    25167    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    217   K�       �          0    25226    photos 
   TABLE DATA           <   COPY public.photos (id, product_id, photo_path) FROM stdin;
    public          postgres    false    227   h�       �          0    25214    product_statistics 
   TABLE DATA           [   COPY public.product_statistics (id, product_id, count, created_at, updated_at) FROM stdin;
    public          postgres    false    225   U�       ~          0    25202    products 
   TABLE DATA           �   COPY public.products (id, name, price, description, short_description, category, created_at, updated_at, product_size) FROM stdin;
    public          postgres    false    223   |�       |          0    25186    profiles 
   TABLE DATA           |   COPY public.profiles (id, address_id, first_name, last_name, email, password, phone_prefix, phone_number, role) FROM stdin;
    public          postgres    false    221   K�       s          0    25137    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    212   Ĵ       �           0    0    addresses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.addresses_id_seq', 1, true);
          public          postgres    false    218            �           0    0    cart_contents_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cart_contents_id_seq', 1, false);
          public          postgres    false    230            �           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 1, false);
          public          postgres    false    228            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    214            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 93, true);
          public          postgres    false    209            �           0    0    order_contents_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.order_contents_id_seq', 1, false);
          public          postgres    false    234            �           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    232            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    216            �           0    0    photos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.photos_id_seq', 56, true);
          public          postgres    false    226            �           0    0    product_statistics_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.product_statistics_id_seq', 28, true);
          public          postgres    false    224            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 28, true);
          public          postgres    false    222            �           0    0    profiles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.profiles_id_seq', 1, true);
          public          postgres    false    220            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    211            �           2606    25184    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    219            �           2606    25260     cart_contents cart_contents_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cart_contents
    ADD CONSTRAINT cart_contents_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cart_contents DROP CONSTRAINT cart_contents_pkey;
       public            postgres    false    231            �           2606    25247    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    229            �           2606    25163    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    215            �           2606    25165 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    215            �           2606    24115    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    210            �           2606    25293 "   order_contents order_contents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.order_contents
    ADD CONSTRAINT order_contents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.order_contents DROP CONSTRAINT order_contents_pkey;
       public            postgres    false    235            �           2606    25280    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    233            �           2606    25153 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    213            �           2606    25174 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    217            �           2606    25177 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    217            �           2606    25233    photos photos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.photos DROP CONSTRAINT photos_pkey;
       public            postgres    false    227            �           2606    25219 *   product_statistics product_statistics_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.product_statistics
    ADD CONSTRAINT product_statistics_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.product_statistics DROP CONSTRAINT product_statistics_pkey;
       public            postgres    false    225            �           2606    25212    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    223            �           2606    25195    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    221            �           2606    25146    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    212            �           2606    25144    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            �           1259    25175 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    217    217            �           2606    25261 +   cart_contents cart_contents_cart_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_contents
    ADD CONSTRAINT cart_contents_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.carts(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.cart_contents DROP CONSTRAINT cart_contents_cart_id_foreign;
       public          postgres    false    229    3285    231            �           2606    25266 .   cart_contents cart_contents_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_contents
    ADD CONSTRAINT cart_contents_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.cart_contents DROP CONSTRAINT cart_contents_product_id_foreign;
       public          postgres    false    3279    231    223            �           2606    25248    carts carts_profile_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_profile_id_foreign FOREIGN KEY (profile_id) REFERENCES public.profiles(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_profile_id_foreign;
       public          postgres    false    221    229    3277            �           2606    25294 .   order_contents order_contents_order_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_contents
    ADD CONSTRAINT order_contents_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.order_contents DROP CONSTRAINT order_contents_order_id_foreign;
       public          postgres    false    233    3289    235            �           2606    25299 0   order_contents order_contents_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_contents
    ADD CONSTRAINT order_contents_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.order_contents DROP CONSTRAINT order_contents_product_id_foreign;
       public          postgres    false    235    3279    223            �           2606    25281     orders orders_profile_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_profile_id_foreign FOREIGN KEY (profile_id) REFERENCES public.profiles(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_profile_id_foreign;
       public          postgres    false    3277    221    233            �           2606    25234     photos photos_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.photos DROP CONSTRAINT photos_product_id_foreign;
       public          postgres    false    3279    223    227            �           2606    25220 8   product_statistics product_statistics_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_statistics
    ADD CONSTRAINT product_statistics_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.product_statistics DROP CONSTRAINT product_statistics_product_id_foreign;
       public          postgres    false    3279    223    225            �           2606    25196 $   profiles profiles_address_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_address_id_foreign FOREIGN KEY (address_id) REFERENCES public.addresses(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_address_id_foreign;
       public          postgres    false    219    221    3275            z      x�3�� �=... `�      �      x������ � �      �      x������ � �      v      x������ � �      q   $  x�e��n�0F���Lq?y�IV\���������C[0)HH��/���'�� (�j}�/��=�1��D'�:+I8�7�oX\(R�~h��^eӢ�1��ō�΂��ǘ�$�f7��b|�Y�5*�	�l�M�R�0p�H��%�G2�>h	�&`S���>	�)a�0������ZW7��RhW����z��,}I�F��Üh��=�?��,�ª���}���]јw�1�L��R��5V&E���]I���k�ɤh��d�12�?�%�.��󣪪
�W      �      x������ � �      �      x������ � �      t      x������ � �      x      x������ � �      �   �  x�e��n�0E���∤�e����� ��t,X/0R��}��LZI�3g ]ݑ(���?~�1������8~�~��)t�#�zœo ���Є�s��'� ��c�Y.4���k��U��iR����ĭظ���P���ڄ���m����5�RD���S@�Swn��]%b��lW@A~��?ՍS���-y�QE܅��w�C\`�sP�����>��3�Ћ���>9%͡�Sv���45������I�l�)<߮�)�.�V>9Jg���<��r\x��8F���0��	�P���1�64}甴����w(u���F������oT@%�O1�nt(��l���P�����iQ�ո��}�O}�������]t�~��Ұ�s�nt$���u�P:���M9:N-=�C)�dKο	JjaWw/7*�Sv)a;���P�5zN٥�%컚jC)��L�߻�f�	�t#      �     x�m��mA�t/?0_bq�qxXɗm�9Ֆ�-TT�X3�i�O;�O�V&F�hao�apq�5��ХW�(���s?S&�jÒU�cW[6�#�TG�3:%Imr�+lT����ء�'����P�c2����+���V�Ek�w�pc� �F�W:E'�3��d�%��_qS�E7�~��d�#z*����Re�8�Ð���߭%?��b����3䘽��'�ݱq�~�YC�-��3�{��M1��~�?�ܯ��x��Ð��wG���>3�      ~      x��\˒��q]�~�3dG����w�+۲��н�6��"	5
h��?x���8�ɬB���R�i(TUf�<�(�-~}�}.�����כ�_�\���kז�pC!׊���v��ڕ����[<7tǢ
Ŧ�\Y������"e�j�jܸ����T�b8q��V����?���|(�M]�u�2�[ߖU��ﻺ;�>�C5�eQV��b���0�&�o]˵�����۲(��?v��k�vӄ}]W��[���l�����-����W��o_r�u���7~�ɮ���r{�<p��R.�MXa�]�?�v�c��7b/�}��۾;����\l�z���}*���E���c5�G�2�(w�UcS4cd���o^6������뫣o}7\��_�j{�A�];����d�|G��_M�������[58�nX���?�n�������ח����_�,�_���gJ�t��uQOWt�����ۢ�9ֵ]��8�O��V'R|��\-n��k)��自E[U���X�^�w�V�����Ԑ�\b'Och_�e(��R�!�����V��b
&��ȬW�V�4̮tb{YL�߹��n�
���Ǎۚ͜E5�Ӫ����?x��l�/^{�?h72�>��ǉ�-�h�2��S�Ue.wU}C���M72\�;9ѝ1��&Nb��H�Ky�*�.����.�B��it
][/�0����k/1�5y��i̊??W��\˷-�Lh*R��㊖5�Sq�k��F9�bS���$�J�0"*=��V�" Ȥ�MW��Ntr�5�7�`�U9vXT��Nv����h'Q�)`����;�N�(��F�����37�4���Q�'G���!���d��(��'1⮮�v��H(o�F����"^����c�W�:���7ş�x�W�e)3qD(ܫ��
�	����
:���޻�t�;��l�k�淴\�ω���c��������a���WG��A�3��KT�J����5� ;�y�8)��,�iu�2��:�����bd�=���EO�*ˋ�8�j�kUyE;���NG�#JS� x1�q�eޫ�V����]OW��4t�uE~��7��|=��hP����be��_Kլ�c�c�0��L Qљc��`Zw+��q"9�YǮjs���f��9��g������Q�-�~��2�e�H*����e.��7���h�-3����f�S�c�$�.j˽pӤt�e��zl�k{\=OV`�ъ�T���W|)\�H�z�vl6�W����!0ll��a�!�I�꘸�Ǫ}�Z&��o�,m��w�����0�6!��S7�(�X�"'���W�-�M4��3@�0�*%Q�O���q{I
o�?/'�+{P;����}m���Xo�G#�1b�J�Uޛ-<Ӵ�뻷�*��"��A�,f&�+B�ثl����@QW���[�����+r�Ag'rY���r���n�p���5��n�%�;w� �^n߁"��)����h�A��f��3����R=�Ί�_<�Df#�+��Mq�Zپڠ���GФǓ�nj�N'���kD�g��0�MOK�c�D�"�'��BY���Y�f!��X�����j�����Ί���a��;�z����>ӉSB\�=��1�% ��ob�%��rp��N�B;�ŨF�(E�r�{�	^4�׸D�ּ?���s#a� Z��FY�*{��Ad0�j���z�N�����5�!8����c��83}͒� ��4���Ob��\�πѶo��=��ܓthd��t��daD�l��F�ǭ��+����F��#jS򂛱��%�n�>2Y�VC"^�!.=����Af��X��71܆�����&�f��	'�,���_�j��/��d9u�����v���I�C(:r����+c~A��M���@��#C�,�Q�K<���y �T�S�u�x[N�t�a�B֘�W�`6f�dѧׄ�ŧ{�����GQ���4�&�@yb������=�՝�#ru��/�Ltj��'e��
\qq�iU0��,%7&R�Y"�� X����Nrŵ`�*�P�lo��F�cU(�ah��d��+ǭ��-S�l	�zI'�l�n!��LB=aX�t�Yن��|������b0����}ZA�)<-~�~{x&��Hw���l�Y�ظ�x����r�bh����������Zq�f�N�����B���N �ф@�c2���z�M|�X�Х��"��e�zGKB��]4�b��eK5��Q牽�@���X�����D;���2`��y������d^3kf�����NV��u�ƪݮY�n���i�.���ᣒ�N6����"g
����Z��
�ݎ��;�V#k���1�߹$� Uc�[�K�$V7s��~p}�$����R3}5��1Hx�Gh�[�/��z��I�Qp�� �!�nCz$�m�\��F��rw�����$lɳ�1�돚.��R�Kg:cEmiAA����w�f<�B_^Q��sֳL�wʷW�1�̬�����`
? � ����^ܨfI0q{{��[�?��Pj��vP�o\;+�t��-�t���j'lC݋�~�a�;	c�f��ưu-SpX����n:A�
e/��AzY�a�|���X�]<߬׋-�����Fh��AX"mw3�����<s/�R�^��Kd� Ǘ�X&0�reI�Hd\��LI�)ӁMH����2쳨��44Ӭ�,_���S�	��e,�؊��T�����94q\Ȣ�yhـ?�l���n�Bfg�	�P_X
cۊ&)_q@�`�0?Pc�������cw��<�
F��d� b|��-.�q���U�n�%�Y�
6�@�Fi�ɍ�F	���pv�h E
H���J�8$��k%��ťڭ_�^�f��u��h����
�O�Sm̳��E�"��ob{��WqK`��=+=a �J��;������r������| a��7Y ��fp���}>���� 5�RU��>�$妡��#����ʸw7k�U%4�֖����RF��4꒖��L*�a����jH�� E��T8��9�_�d��Ҹ!;˓���Ũᙅ��w� ��l�^[h/�
V�u6F��7[j�ߧ���V�>�\WJ0#�vK�L� CwPh��� ;�?i�D�ЎC�P��^߹[^Sw{w����ueU/�o�_��U#� 9�j�pr}	l�V�c�+Ĳ�
�gQ���^�j�����lT�LE�T��v��\�߇�S�$��"r�p6�Q�H�A6�˪c�Ch�n%��`�>D�א&Ƣ��ѭu�����[H��Z�V�5wc�n8�L�!�'z�>,/�:bl��	�V%Bi� �G�ɓ(n@��{�����e��QqU��I�F*z��D���+d�@i�4BoѢo�*q�HDj��*r�A��9�::�o���Q8]�:{rB��0��%�Rn��bw����-B�w�0��n*�iL0�Y� �	��YcFP3 )H��r��ܯ�^Ӝ����7��v������:��`F&���>ȢJ]�5<DS�Z̳��c]Z��>�2��K�D�i�+7C7E�7K�=��a���6U�EP�4��X(퇃����P�)ZX;6�'<�%�(�(���T
7d�Iq��2.%h�F	p�*I�4�D�����&G����?MX~�aӦ�-Gy��M1�,-˅������h���L��&r;�e�la~)��|G��V}�#hCs�U<����N/����1����/�!RQ�;3�E��{��ց6�(eգ+����?�ܽSy^3�G_G}V}瞂�\�����S��]�[�.� ��~�O�Y����z� A���0��뿨*�>*�v Q���~e�Nq#��"g݊S�@ޟ���۳D��@��+t(���Y��. �$�u��<S�K�¨UA�\M��|�.�b��5�#�}W'��|�:��)�j�W�)�.9�#���X��BE�TϤ    ꉗ�#1-�hBF/�c+g�R�Ti6(��-������ݻ�"���{X�^�cU.�o�]	�9�vǀ,*d���ykB��6Ɣލ��u��ٗH��,�[b0��0jʺd�����#N�wf��%	-����Q츺��!��T���V�����S6�b)<�f�n�����X��j&̲��"(��m鎃��&t�F9RIX��W� `~2@��j�� �4폅Ga��t7+�i�!�J�~\����sJ֨�Nb���UH�T3Dqa�U
����m���&Nv^���T���7�T�P�xD\L���w&�0c���Lu�c	�w� �EKx\�2
<i(�^�{F�2�`~�Q�]X�r;
�#����(:k>RQ����H�
F0Wȏ��'�+C�%DBVb��`�Ț,� b����ܧ�<�|L�ޯRʥ!}LS��Q
����=�6T�R�DK���>�	y��?�L�&�"��q�->S}^ʎ�aﳆS�tM���d��Pmj�u��������"�s,�'�xc�WX��`5]6��Pe����k�L0b4���2Ϛ��c0
ׇy�c���Z@�`sL:U"Veo�tu���t�iXQ *�&	�*o�"BF6��^9	���ŘPf�+�O�i�M\1ɻۗ�ۗ��׌r�?գߠ�[x���������n-<�Q��9�Z�Nё["�#&?�w �󰮐`��`D����e!�[z�FG�"�����"��$�)ǶƝ �L̂��،��LyJ����� %b9kr��i��2�[#����'�yS�QD��+�E#9B0g����l�<Z�F�[5��� �N�Բ�J���`�9���4�0#KH�"�s�)�ؾ���<��R�)B��`�ϣ��	�l1�3��`���ß��d<Vp�Te�����?ۘ�%�q+�4��)i���V}�uh����r�;�.jnB�H�a^�����d�$�i�X��W����y���c1N���Ջ_��Pp���]�k/~��k~����=��=� ��G�͔��J��X��/�W�E�����G�৛�E�R0�u�M��r��B�
���Uu�?Ag,=�j��<�7�6R�䋆���Ё�1]�e^�u��`����ذ��N��<����z�/�c�����w���<� 4�V4�GoSi	��e�)p�y\��{�S�"�K��V;�s�!Ajя�_,���E�֗�en�vo$o�4q�2u�2���#�������9�/��E�'գ���B{dC��Y=r��*�H`ǳ�ۺ�������>�Q�l�H��j@W~����p"h�d�gj�����1S��Y�BΠO{�B�Șځ�f��eb�� �9um��H��GO;]�4�ok�I�t�&����F��ޙ�=�j��,�Z����CG��w��5��(��o��x����"��5S��ş�� ̂�3lJ׬Pf^Ǡd[W͆�;�d��X��r}��dT�;��,A�rt��z-O�dw���2z$t3������؄�Y�j�n�����e�DQ��WB��]5��JV�F�t��m���\2^?k,I��у�#xB�q-�
�AϵM�v���H�5;�4_M|朵�*Nw��4.����(v�W��~��Q�Nղ�Al��d�g&���諐e&Ub�@dl'�PD���ԼA?�*�d�>F���3�֡���� �
mzc�\^0׉e�Xv��m�XF����!��/}��dmZ��ӕ��fJ�PG�$��H9�"��p+{`笀6rN��&�ȡ���U#���xN�}wO�V�l��6x(�E�C?�N;AS�;(#��c��qPg&��豵;䶵7tB�-;Bk@5�Ӥ��0�@&346�3� ��$T�z�j�_��e�o2��a�K_�5ޔ����m������ y+�m�:XX�iDQ1!�0:GNB�xG
�������55��3���t,�-�@���4�����{�5�w���N���p��rK�NDv�7�el��G�d[	*��̈́@�ےѬ�'��(���ha�0�x��H8:6��g[X�����ig}2�f��A�F.7���>R�ǯW�����.~="7:,�@S�X�b��']�����g�R�kɓ�Z
�\&2�ӟ��J�ђ���lR��\h�v#]:�s@��I(�����i[�O,ˍi@�cDo�e����I~m��e��ոm���r��}v,�|~���o���Jli҆�|G��c���*
<�����e5t��b?�E�𾉅5쯃A-6��4*`����3�0z֋����{�����;	hc�g:�T%ά��Y~<F.��,>45�Rje����'j����N���Y-�(����P�q(��V�o"��ۏz�@���s��Z����2�vAo�hh �D�Ҫ��j�$#���o�1
�^j��:��Y�ԠQ��¢@�q4v��T+�D~��k7Q<=d9x��U�M	��R��v�a�zh�gk��VT��%�fђ����� ���᷇�{1�=���^6�b�VGer����F�i�60٣�u�A0~a���3�� M��9��1%��v��F�L:׀^���Ѐ �Y6M�d2����V�.%��r(Q�T!JpT=�OZ��8(ބN%�8��6�����҇���w�k�b�� ��-o����L�l��Mn�O�������Q��r/�F^��sK�$*��3'��7����I;[�_�n�l]���WYN�KWv=��M�|��.mPf{�{N3f�,�n�=\����}�ǑN��B,ynN��`�c��4ay�)P����&=:e�_�|���I{�t��s�D�7	[�^�.N{P#V*>u�dE�w¼u:�'�ya+�L\�7+s1�g=�cX�S�G���_�=j8���Қ�1W� �΢L���[�	�E7��L����UO믭r��}'oh�#P�0��$����\�=T~�u�C��
�ڶ�������Gh0��q�N�#T�3߲Wv�U�Xt���j���cj#!�H i]�F��b�q���lǓ<���lXU����w&�,��#��+/��k+&+Xq��t�w��!��zF舕�}'��Eh]k�dP���^���;3�ej��}=�����E~̂�����.����K��m��!!GS�t�	���#:��\��k��A��G3�#bE�q>�[H[�9{A�a���!n�3z����o�.��r!&���'���bI����b|�0Y@o$�;1v�;|�{{188�)~Ҟ`�	��v�O��Hyq`�Z��Ǐ1�|W[��:�Y�����csX<ݬ��!H��&�zj�z��a9k���>�f$�(�i�U�6��* WR�ԡ8����ݭ�:?��@1��[��Ԝ�,��MQ�JJ�3�i|���?�l;�
����ԧ�t����<�?��D���2��a�0�y�}�)��oD��	H��O3[��ŗ��~���a�4:�%���8����/�~��B6��k>3m��2;pQ�٥�Ӄ��ڜ�^"�x�Q��~ԭ�����!�(]��]ƶ���I�
}��LM���aKf�٠.vrƩ�r3�����O��58v�06��C���v�Mɗ�d1�_j<�^C�u~�������7Gdb��Qf���h�=
߮�7�����8��-u�):e�:ɇN�1��b������k��XK|�e)N�-!P/��1���آٿ%�-��~9�WH%��:8skT�y�1~��y��K��&$R=��6g��xdB�Z%�>�]�dռ`�YǶ
�[lB����=�`Ī�4r�F/XsC�pO�Z6e�޴x�Q]���_�*�����d�c˶�D~���y[�us�a�E��>�i�+�T��|7
-E�0���E�V:�d)k�P��K�tE�n�v�>a�O��.�h��z�I��:����<l<7c�k�b=�:�XFE��m6 y:�ŀN���2SU��>�vhA�{�ۂ��b��V8�=�yz��,���A���W:��s�Ն0eshA�ϖ<�ǻSWW|�?��A;�����?j��d�y$�LQ�2������F(���TC��X �  �3ߞzw<ƈ~f�������0�G6�O����Ez�q�wr��΃3kM�9�,U�\Um�2�ȏEvb�R+sZ;O�?�Pd1��� ㌀f�.Xc%Y���JHtI���նت�n��+�Ѹ�h��>�B�� + 2�PP^�F�<�]dmj������:��i������"^�� �o��U[(��Y|��|�T�����?\�e���(>N/����?��M���Q�Մw���ٞ��ך���鉮�ǲ�<F</5��u��g_�d�{��l|w��7��z��tD#���I�I3���my�w���E	��ՠ�N�gd��:���þp(��<���^��w�ߣ��W�u�ά�紒��="�	cH7��Tq�Fց=B�H��O�K�/����4N�YL������\v��s�\Y�Q����2�1w{t�Xv���l�Ht�8׉�3�c>�,!�QX�`-��ۑ'��_�d4��j�̬c��z�������e#�^3�{^�/_�Ea�S"Ґ1�)e�q@q&��V�(�e��o�דZ�2f����U7��LR*����&v�gr��\J�'�|�G&���S�U�'���lE����2W��e�;9���*S�5���*��mYkpf��w��x~��3�A�N�Y�-f|�����홖�@�t�!�!=rU�6�]���0{�7fʛ�Ȇ���l��m������[�)�	c�f���Aݔ��W(��1%3�}���r��l���@̒Y�U���y�"��4��[]$O����M��8=½�׸҄P�!f'I�O�$W8�^���
��Yv�Gk�A���&��dgo���z�U^ܩ��h��0��_��2L��xS�2��L	�M�]����c�-�K�Ȯ"ai=�,�-��<��.��ZjV
t���$2��R���[�|���;�}�_n�W�)����~�=���      |   i   x�3�4�tL��̃�� �!=713G/9?�SŨR��@%� � $��[���+$J�3�@�"*5���0�;ѻ"55=_/�24ݷ*��E?�ҳ��(�3���Fr��qqq 6� �      s      x������ � �     