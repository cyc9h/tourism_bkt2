PGDMP     ,    +    
            w            test    10.8    10.8 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            	            2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    9                       1259    26454    admin_restaurant    TABLE     z   CREATE TABLE public.admin_restaurant (
    username character varying(15) NOT NULL,
    password character varying(35)
);
 $   DROP TABLE public.admin_restaurant;
       public         postgres    false    9                       1259    26457    administrators    TABLE     }  CREATE TABLE public.administrators (
    stewardship_period character varying(9) NOT NULL,
    id_worship_place character(5) NOT NULL,
    name character varying(30),
    address character varying(50),
    hp character varying(12),
    role character varying(1),
    username character varying(15),
    password character varying(32),
    last_login timestamp without time zone
);
 "   DROP TABLE public.administrators;
       public         postgres    false    9                       1259    26460    angkot    TABLE     !  CREATE TABLE public.angkot (
    id character varying(5) NOT NULL,
    destination character varying(20) NOT NULL,
    track character varying(50) NOT NULL,
    geom public.geometry,
    id_color integer,
    cost integer,
    number character(5),
    route_color character varying(10)
);
    DROP TABLE public.angkot;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9                       1259    26466    angkot_color    TABLE     W   CREATE TABLE public.angkot_color (
    id integer NOT NULL,
    color character(20)
);
     DROP TABLE public.angkot_color;
       public         postgres    false    9                       1259    26469    angkot_gallery    TABLE     �   CREATE TABLE public.angkot_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_angkot character varying(10) NOT NULL
);
 "   DROP TABLE public.angkot_gallery;
       public         postgres    false    9                       1259    26472    category_worship_place    TABLE     h   CREATE TABLE public.category_worship_place (
    id integer NOT NULL,
    name character varying(10)
);
 *   DROP TABLE public.category_worship_place;
       public         postgres    false    9                       1259    26475    culinary    TABLE     Z   CREATE TABLE public.culinary (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.culinary;
       public         postgres    false    9                       1259    26478    culinary_gallery    TABLE     �   CREATE TABLE public.culinary_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_culinary character varying(10)
);
 $   DROP TABLE public.culinary_gallery;
       public         postgres    false    9                        1259    26481    culinary_place    TABLE     _  CREATE TABLE public.culinary_place (
    gid integer NOT NULL,
    name character varying(30),
    address character varying(50),
    cp character varying(12),
    capacity integer,
    geom public.geometry(MultiPolygon),
    open time without time zone,
    close time without time zone,
    employee integer,
    id character varying(5) NOT NULL
);
 "   DROP TABLE public.culinary_place;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            !           1259    26487    detail_culinary    TABLE     �   CREATE TABLE public.detail_culinary (
    id_culinary_place character varying(5) NOT NULL,
    id_culinary integer NOT NULL,
    price integer
);
 #   DROP TABLE public.detail_culinary;
       public         postgres    false    9            "           1259    26490    detail_culinary_place    TABLE     �   CREATE TABLE public.detail_culinary_place (
    id_culinary_place character varying(5) NOT NULL,
    id_angkot character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 )   DROP TABLE public.detail_culinary_place;
       public         postgres    false    9            #           1259    26493    detail_event    TABLE     �   CREATE TABLE public.detail_event (
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    id_ustad integer NOT NULL,
    id_event integer,
    id_worship_place character varying(5) NOT NULL,
    description text
);
     DROP TABLE public.detail_event;
       public         postgres    false    9            $           1259    26499    detail_facility    TABLE     �   CREATE TABLE public.detail_facility (
    id_facility integer NOT NULL,
    id_worship_place character varying(5) NOT NULL,
    id_facility_condition integer
);
 #   DROP TABLE public.detail_facility;
       public         postgres    false    9            %           1259    26502    detail_facility_culinary    TABLE     �   CREATE TABLE public.detail_facility_culinary (
    id_culinary_place character varying(5) NOT NULL,
    id_facility character varying(1) NOT NULL
);
 ,   DROP TABLE public.detail_facility_culinary;
       public         postgres    false    9            &           1259    26505    detail_facility_hotel    TABLE     t   CREATE TABLE public.detail_facility_hotel (
    id_hotel character(5) NOT NULL,
    id_facility integer NOT NULL
);
 )   DROP TABLE public.detail_facility_hotel;
       public         postgres    false    9            '           1259    26508    detail_facility_restaurant    TABLE     ~   CREATE TABLE public.detail_facility_restaurant (
    id_facility integer NOT NULL,
    id_restaurant character(5) NOT NULL
);
 .   DROP TABLE public.detail_facility_restaurant;
       public         postgres    false    9            (           1259    26511    detail_facility_tourism    TABLE     }   CREATE TABLE public.detail_facility_tourism (
    id_tourism character(5) NOT NULL,
    id_facility character(1) NOT NULL
);
 +   DROP TABLE public.detail_facility_tourism;
       public         postgres    false    9            )           1259    26514    detail_hotel    TABLE     �   CREATE TABLE public.detail_hotel (
    id_angkot character(5) NOT NULL,
    id_hotel character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
     DROP TABLE public.detail_hotel;
       public         postgres    false    9            *           1259    26517    detail_menu    TABLE     �   CREATE TABLE public.detail_menu (
    id_restaurant character(5) NOT NULL,
    id_special_menu integer NOT NULL,
    price integer
);
    DROP TABLE public.detail_menu;
       public         postgres    false    9            +           1259    26520    detail_product_small_industry    TABLE     �   CREATE TABLE public.detail_product_small_industry (
    id_product integer NOT NULL,
    id_small_industry character varying(5) NOT NULL,
    price integer
);
 1   DROP TABLE public.detail_product_small_industry;
       public         postgres    false    9            ,           1259    26523    detail_product_souvenir    TABLE     �   CREATE TABLE public.detail_product_souvenir (
    id_product integer NOT NULL,
    id_souvenir character varying(5) NOT NULL,
    price integer
);
 +   DROP TABLE public.detail_product_souvenir;
       public         postgres    false    9            -           1259    26526    detail_restaurant    TABLE     �   CREATE TABLE public.detail_restaurant (
    id_angkot character varying(5) NOT NULL,
    id_restaurant character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 %   DROP TABLE public.detail_restaurant;
       public         postgres    false    9            .           1259    26529    detail_room    TABLE     f   CREATE TABLE public.detail_room (
    id_room integer NOT NULL,
    id_hotel character(5) NOT NULL
);
    DROP TABLE public.detail_room;
       public         postgres    false    9            /           1259    26532    detail_small_industry    TABLE     �   CREATE TABLE public.detail_small_industry (
    id_small_industry character varying(5) NOT NULL,
    id_angkot character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 )   DROP TABLE public.detail_small_industry;
       public         postgres    false    9            0           1259    26535    detail_souvenir    TABLE     �   CREATE TABLE public.detail_souvenir (
    id_souvenir character varying(5) NOT NULL,
    id_angkot character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 #   DROP TABLE public.detail_souvenir;
       public         postgres    false    9            1           1259    26538    detail_tourism    TABLE     �   CREATE TABLE public.detail_tourism (
    id_angkot character(5) NOT NULL,
    id_tourism character(5) NOT NULL,
    lat character(15),
    lng character(15),
    description character(30)
);
 "   DROP TABLE public.detail_tourism;
       public         postgres    false    9            2           1259    26541    detail_worship_place    TABLE     �   CREATE TABLE public.detail_worship_place (
    id_angkot character(5) NOT NULL,
    id_worship_place character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 (   DROP TABLE public.detail_worship_place;
       public         postgres    false    9            3           1259    26544    district    TABLE     �   CREATE TABLE public.district (
    geom public.geometry(MultiPolygonZM),
    id character varying(4) NOT NULL,
    name character varying(25)
);
    DROP TABLE public.district;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            4           1259    26550    event    TABLE     �   CREATE TABLE public.event (
    id integer NOT NULL,
    name character varying(30),
    description text,
    id_type_event integer
);
    DROP TABLE public.event;
       public         postgres    false    9            5           1259    26556    facility    TABLE     Z   CREATE TABLE public.facility (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.facility;
       public         postgres    false    9            6           1259    26559    facility_condition    TABLE     h   CREATE TABLE public.facility_condition (
    id integer NOT NULL,
    condition character varying(8)
);
 &   DROP TABLE public.facility_condition;
       public         postgres    false    9            7           1259    26562    facility_culinary    TABLE     t   CREATE TABLE public.facility_culinary (
    facility character varying(20),
    id character varying(1) NOT NULL
);
 %   DROP TABLE public.facility_culinary;
       public         postgres    false    9            8           1259    26565    facility_hotel    TABLE     X   CREATE TABLE public.facility_hotel (
    id integer NOT NULL,
    name character(20)
);
 "   DROP TABLE public.facility_hotel;
       public         postgres    false    9            9           1259    26568    facility_restaurant    TABLE     e   CREATE TABLE public.facility_restaurant (
    id integer NOT NULL,
    name character varying(20)
);
 '   DROP TABLE public.facility_restaurant;
       public         postgres    false    9            :           1259    26571    facility_tourism    TABLE     h   CREATE TABLE public.facility_tourism (
    name character(30) NOT NULL,
    id character(1) NOT NULL
);
 $   DROP TABLE public.facility_tourism;
       public         postgres    false    9            ;           1259    26574    hotel    TABLE        CREATE TABLE public.hotel (
    id character(5) NOT NULL,
    name character(25),
    address character(50),
    cp character(12),
    geom public.geometry(MultiPolygon),
    ktp integer,
    marriage_book integer,
    mushalla integer,
    star character(2),
    id_type character(1)
);
    DROP TABLE public.hotel;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            <           1259    26580    hotel_gallery    TABLE     �   CREATE TABLE public.hotel_gallery (
    serial_number integer NOT NULL,
    id character(5),
    gallery_hotel character(10)
);
 !   DROP TABLE public.hotel_gallery;
       public         postgres    false    9            =           1259    26583 
   hotel_type    TABLE     b   CREATE TABLE public.hotel_type (
    name character(10) NOT NULL,
    id character(1) NOT NULL
);
    DROP TABLE public.hotel_type;
       public         postgres    false    9            >           1259    26586    industry_gallery    TABLE     �   CREATE TABLE public.industry_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_industry character varying(10)
);
 $   DROP TABLE public.industry_gallery;
       public         postgres    false    9            ?           1259    26589    industry_type    TABLE     l   CREATE TABLE public.industry_type (
    name character varying(20),
    id character varying(1) NOT NULL
);
 !   DROP TABLE public.industry_type;
       public         postgres    false    9            @           1259    26592    kuliner_region_gid_seq    SEQUENCE        CREATE SEQUENCE public.kuliner_region_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.kuliner_region_gid_seq;
       public       postgres    false    288    9            �           0    0    kuliner_region_gid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.kuliner_region_gid_seq OWNED BY public.culinary_place.gid;
            public       postgres    false    320            A           1259    26594    login    TABLE     _   CREATE TABLE public.login (
    username character(20) NOT NULL,
    password character(35)
);
    DROP TABLE public.login;
       public         postgres    false    9            B           1259    26597    product_small_industry    TABLE     k   CREATE TABLE public.product_small_industry (
    id integer NOT NULL,
    product character varying(10)
);
 *   DROP TABLE public.product_small_industry;
       public         postgres    false    9            C           1259    26600    product_souvenir    TABLE     e   CREATE TABLE public.product_souvenir (
    id integer NOT NULL,
    product character varying(10)
);
 $   DROP TABLE public.product_souvenir;
       public         postgres    false    9            D           1259    26603 
   restaurant    TABLE     �  CREATE TABLE public.restaurant (
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    name character varying(25),
    address character varying(50),
    cp character varying(12),
    open time without time zone,
    close time without time zone,
    capacity integer,
    employee integer,
    mushalla integer,
    park_area integer,
    bathroom integer,
    id_category integer
);
    DROP TABLE public.restaurant;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            E           1259    26609    restaurant_category    TABLE     e   CREATE TABLE public.restaurant_category (
    id integer NOT NULL,
    name character varying(20)
);
 '   DROP TABLE public.restaurant_category;
       public         postgres    false    9            F           1259    26612    restaurant_gallery    TABLE     �   CREATE TABLE public.restaurant_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_restaurant character varying(15)
);
 &   DROP TABLE public.restaurant_gallery;
       public         postgres    false    9            G           1259    26615    room    TABLE     a   CREATE TABLE public.room (
    id integer NOT NULL,
    name character(20),
    price integer
);
    DROP TABLE public.room;
       public         postgres    false    9            H           1259    26618    small_industry    TABLE     8  CREATE TABLE public.small_industry (
    name character varying(30),
    owner character varying(20),
    cp character varying(12),
    address character varying(50),
    employee integer,
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    id_industry_type character varying(1)
);
 "   DROP TABLE public.small_industry;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            I           1259    26624    souvenir    TABLE     L  CREATE TABLE public.souvenir (
    gid integer NOT NULL,
    name character varying(30),
    owner character varying(20),
    cp character varying(12),
    address character varying(50),
    employee integer,
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    id_souvenir_type character varying(1)
);
    DROP TABLE public.souvenir;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            J           1259    26630    souvenir_gallery    TABLE     �   CREATE TABLE public.souvenir_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_souvenir character varying(10)
);
 $   DROP TABLE public.souvenir_gallery;
       public         postgres    false    9            K           1259    26633    souvenir_type    TABLE     l   CREATE TABLE public.souvenir_type (
    name character varying(25),
    id character varying(1) NOT NULL
);
 !   DROP TABLE public.souvenir_type;
       public         postgres    false    9            L           1259    26636    special_menu    TABLE     ^   CREATE TABLE public.special_menu (
    id integer NOT NULL,
    name character varying(20)
);
     DROP TABLE public.special_menu;
       public         postgres    false    9            M           1259    26639    statistika2    TABLE     �   CREATE TABLE public.statistika2 (
    ip character varying(20) NOT NULL,
    tanggal date NOT NULL,
    hits integer NOT NULL,
    online character varying(255) NOT NULL
);
    DROP TABLE public.statistika2;
       public         postgres    false    9            N           1259    26642    status    TABLE     Z   CREATE TABLE public.status (
    id integer NOT NULL,
    status character varying(25)
);
    DROP TABLE public.status;
       public         postgres    false    9            O           1259    26645    tourism    TABLE     �   CREATE TABLE public.tourism (
    id character(5) NOT NULL,
    name character(40),
    address character(50),
    open time without time zone,
    close time without time zone,
    geom public.geometry,
    ticket integer,
    id_type character(1)
);
    DROP TABLE public.tourism;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            P           1259    26651    tourism_gallery    TABLE     �   CREATE TABLE public.tourism_gallery (
    serial_number integer NOT NULL,
    id character(5),
    gallery_tourism character(10)
);
 #   DROP TABLE public.tourism_gallery;
       public         postgres    false    9            Q           1259    26654    tourism_type    TABLE     d   CREATE TABLE public.tourism_type (
    name character(10) NOT NULL,
    id character(1) NOT NULL
);
     DROP TABLE public.tourism_type;
       public         postgres    false    9            R           1259    26657 
   type_event    TABLE     \   CREATE TABLE public.type_event (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.type_event;
       public         postgres    false    9            S           1259    26660    ustad    TABLE     �   CREATE TABLE public.ustad (
    id integer NOT NULL,
    name character varying(30),
    address character varying(50),
    cp character varying(12)
);
    DROP TABLE public.ustad;
       public         postgres    false    9            T           1259    26663    worship_place    TABLE     �  CREATE TABLE public.worship_place (
    geom public.geometry(MultiPolygon),
    id character varying(5) NOT NULL,
    name character varying(35),
    address character varying(80),
    land_size integer,
    park_area_size integer,
    building_size integer,
    capacity integer,
    est integer,
    last_renovation integer,
    jamaah integer,
    imam integer,
    teenager integer,
    id_category integer,
    image character varying(50)
);
 !   DROP TABLE public.worship_place;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            U           1259    26669    worship_place_gallery    TABLE     �   CREATE TABLE public.worship_place_gallery (
    serial_number integer NOT NULL,
    id character varying(5) NOT NULL,
    gallery_worship_place character varying(50)
);
 )   DROP TABLE public.worship_place_gallery;
       public         postgres    false    9                       2604    26672    culinary_place gid    DEFAULT     x   ALTER TABLE ONLY public.culinary_place ALTER COLUMN gid SET DEFAULT nextval('public.kuliner_region_gid_seq'::regclass);
 A   ALTER TABLE public.culinary_place ALTER COLUMN gid DROP DEFAULT;
       public       postgres    false    320    288            F          0    26454    admin_restaurant 
   TABLE DATA               >   COPY public.admin_restaurant (username, password) FROM stdin;
    public       postgres    false    280   �6      G          0    26457    administrators 
   TABLE DATA               �   COPY public.administrators (stewardship_period, id_worship_place, name, address, hp, role, username, password, last_login) FROM stdin;
    public       postgres    false    281   �6      H          0    26460    angkot 
   TABLE DATA               c   COPY public.angkot (id, destination, track, geom, id_color, cost, number, route_color) FROM stdin;
    public       postgres    false    282   D      I          0    26466    angkot_color 
   TABLE DATA               1   COPY public.angkot_color (id, color) FROM stdin;
    public       postgres    false    283   i�      J          0    26469    angkot_gallery 
   TABLE DATA               K   COPY public.angkot_gallery (serial_number, id, gallery_angkot) FROM stdin;
    public       postgres    false    284   ��      K          0    26472    category_worship_place 
   TABLE DATA               :   COPY public.category_worship_place (id, name) FROM stdin;
    public       postgres    false    285   $�      L          0    26475    culinary 
   TABLE DATA               ,   COPY public.culinary (id, name) FROM stdin;
    public       postgres    false    286   U�      M          0    26478    culinary_gallery 
   TABLE DATA               O   COPY public.culinary_gallery (serial_number, id, gallery_culinary) FROM stdin;
    public       postgres    false    287   S�      N          0    26481    culinary_place 
   TABLE DATA               k   COPY public.culinary_place (gid, name, address, cp, capacity, geom, open, close, employee, id) FROM stdin;
    public       postgres    false    288   m�      O          0    26487    detail_culinary 
   TABLE DATA               P   COPY public.detail_culinary (id_culinary_place, id_culinary, price) FROM stdin;
    public       postgres    false    289   j�      P          0    26490    detail_culinary_place 
   TABLE DATA               d   COPY public.detail_culinary_place (id_culinary_place, id_angkot, lat, lng, description) FROM stdin;
    public       postgres    false    290   �       Q          0    26493    detail_event 
   TABLE DATA               g   COPY public.detail_event (date, "time", id_ustad, id_event, id_worship_place, description) FROM stdin;
    public       postgres    false    291   �      R          0    26499    detail_facility 
   TABLE DATA               _   COPY public.detail_facility (id_facility, id_worship_place, id_facility_condition) FROM stdin;
    public       postgres    false    292   5      S          0    26502    detail_facility_culinary 
   TABLE DATA               R   COPY public.detail_facility_culinary (id_culinary_place, id_facility) FROM stdin;
    public       postgres    false    293         T          0    26505    detail_facility_hotel 
   TABLE DATA               F   COPY public.detail_facility_hotel (id_hotel, id_facility) FROM stdin;
    public       postgres    false    294   �      U          0    26508    detail_facility_restaurant 
   TABLE DATA               P   COPY public.detail_facility_restaurant (id_facility, id_restaurant) FROM stdin;
    public       postgres    false    295   g      V          0    26511    detail_facility_tourism 
   TABLE DATA               J   COPY public.detail_facility_tourism (id_tourism, id_facility) FROM stdin;
    public       postgres    false    296   �      W          0    26514    detail_hotel 
   TABLE DATA               R   COPY public.detail_hotel (id_angkot, id_hotel, lat, lng, description) FROM stdin;
    public       postgres    false    297   �      X          0    26517    detail_menu 
   TABLE DATA               L   COPY public.detail_menu (id_restaurant, id_special_menu, price) FROM stdin;
    public       postgres    false    298   U      Y          0    26520    detail_product_small_industry 
   TABLE DATA               ]   COPY public.detail_product_small_industry (id_product, id_small_industry, price) FROM stdin;
    public       postgres    false    299   �      Z          0    26523    detail_product_souvenir 
   TABLE DATA               Q   COPY public.detail_product_souvenir (id_product, id_souvenir, price) FROM stdin;
    public       postgres    false    300   �      [          0    26526    detail_restaurant 
   TABLE DATA               \   COPY public.detail_restaurant (id_angkot, id_restaurant, lat, lng, description) FROM stdin;
    public       postgres    false    301   �      \          0    26529    detail_room 
   TABLE DATA               8   COPY public.detail_room (id_room, id_hotel) FROM stdin;
    public       postgres    false    302   M       ]          0    26532    detail_small_industry 
   TABLE DATA               d   COPY public.detail_small_industry (id_small_industry, id_angkot, lat, lng, description) FROM stdin;
    public       postgres    false    303   +"      ^          0    26535    detail_souvenir 
   TABLE DATA               X   COPY public.detail_souvenir (id_souvenir, id_angkot, lat, lng, description) FROM stdin;
    public       postgres    false    304   '      _          0    26538    detail_tourism 
   TABLE DATA               V   COPY public.detail_tourism (id_angkot, id_tourism, lat, lng, description) FROM stdin;
    public       postgres    false    305   �+      `          0    26541    detail_worship_place 
   TABLE DATA               b   COPY public.detail_worship_place (id_angkot, id_worship_place, lat, lng, description) FROM stdin;
    public       postgres    false    306   	.      a          0    26544    district 
   TABLE DATA               2   COPY public.district (geom, id, name) FROM stdin;
    public       postgres    false    307   �0      b          0    26550    event 
   TABLE DATA               E   COPY public.event (id, name, description, id_type_event) FROM stdin;
    public       postgres    false    308   �z      c          0    26556    facility 
   TABLE DATA               ,   COPY public.facility (id, name) FROM stdin;
    public       postgres    false    309   �{      d          0    26559    facility_condition 
   TABLE DATA               ;   COPY public.facility_condition (id, condition) FROM stdin;
    public       postgres    false    310   �|      e          0    26562    facility_culinary 
   TABLE DATA               9   COPY public.facility_culinary (facility, id) FROM stdin;
    public       postgres    false    311   �|      f          0    26565    facility_hotel 
   TABLE DATA               2   COPY public.facility_hotel (id, name) FROM stdin;
    public       postgres    false    312   \}      g          0    26568    facility_restaurant 
   TABLE DATA               7   COPY public.facility_restaurant (id, name) FROM stdin;
    public       postgres    false    313   �      h          0    26571    facility_tourism 
   TABLE DATA               4   COPY public.facility_tourism (name, id) FROM stdin;
    public       postgres    false    314   �      i          0    26574    hotel 
   TABLE DATA               i   COPY public.hotel (id, name, address, cp, geom, ktp, marriage_book, mushalla, star, id_type) FROM stdin;
    public       postgres    false    315   ��      j          0    26580    hotel_gallery 
   TABLE DATA               I   COPY public.hotel_gallery (serial_number, id, gallery_hotel) FROM stdin;
    public       postgres    false    316    �      k          0    26583 
   hotel_type 
   TABLE DATA               .   COPY public.hotel_type (name, id) FROM stdin;
    public       postgres    false    317   �      l          0    26586    industry_gallery 
   TABLE DATA               O   COPY public.industry_gallery (serial_number, id, gallery_industry) FROM stdin;
    public       postgres    false    318   ��      m          0    26589    industry_type 
   TABLE DATA               1   COPY public.industry_type (name, id) FROM stdin;
    public       postgres    false    319   ��      o          0    26594    login 
   TABLE DATA               3   COPY public.login (username, password) FROM stdin;
    public       postgres    false    321   �      p          0    26597    product_small_industry 
   TABLE DATA               =   COPY public.product_small_industry (id, product) FROM stdin;
    public       postgres    false    322   3�      q          0    26600    product_souvenir 
   TABLE DATA               7   COPY public.product_souvenir (id, product) FROM stdin;
    public       postgres    false    323   P�      r          0    26603 
   restaurant 
   TABLE DATA               �   COPY public.restaurant (geom, id, name, address, cp, open, close, capacity, employee, mushalla, park_area, bathroom, id_category) FROM stdin;
    public       postgres    false    324   ��      s          0    26609    restaurant_category 
   TABLE DATA               7   COPY public.restaurant_category (id, name) FROM stdin;
    public       postgres    false    325   ��      t          0    26612    restaurant_gallery 
   TABLE DATA               S   COPY public.restaurant_gallery (serial_number, id, gallery_restaurant) FROM stdin;
    public       postgres    false    326   O�      u          0    26615    room 
   TABLE DATA               /   COPY public.room (id, name, price) FROM stdin;
    public       postgres    false    327   l�      v          0    26618    small_industry 
   TABLE DATA               h   COPY public.small_industry (name, owner, cp, address, employee, geom, id, id_industry_type) FROM stdin;
    public       postgres    false    328   ?�      w          0    26624    souvenir 
   TABLE DATA               g   COPY public.souvenir (gid, name, owner, cp, address, employee, geom, id, id_souvenir_type) FROM stdin;
    public       postgres    false    329   �      x          0    26630    souvenir_gallery 
   TABLE DATA               O   COPY public.souvenir_gallery (serial_number, id, gallery_souvenir) FROM stdin;
    public       postgres    false    330   ^�      y          0    26633    souvenir_type 
   TABLE DATA               1   COPY public.souvenir_type (name, id) FROM stdin;
    public       postgres    false    331   {�                0    24459    spatial_ref_sys 
   TABLE DATA               )   COPY public.spatial_ref_sys  FROM stdin;
    public       postgres    false    206   ��      z          0    26636    special_menu 
   TABLE DATA               0   COPY public.special_menu (id, name) FROM stdin;
    public       postgres    false    332   ��      {          0    26639    statistika2 
   TABLE DATA               @   COPY public.statistika2 (ip, tanggal, hits, online) FROM stdin;
    public       postgres    false    333   ��      |          0    26642    status 
   TABLE DATA               ,   COPY public.status (id, status) FROM stdin;
    public       postgres    false    334   
�      }          0    26645    tourism 
   TABLE DATA               X   COPY public.tourism (id, name, address, open, close, geom, ticket, id_type) FROM stdin;
    public       postgres    false    335   D�      ~          0    26651    tourism_gallery 
   TABLE DATA               M   COPY public.tourism_gallery (serial_number, id, gallery_tourism) FROM stdin;
    public       postgres    false    336   F�                0    26654    tourism_type 
   TABLE DATA               0   COPY public.tourism_type (name, id) FROM stdin;
    public       postgres    false    337   c�      �          0    26657 
   type_event 
   TABLE DATA               .   COPY public.type_event (id, name) FROM stdin;
    public       postgres    false    338   ��      �          0    26660    ustad 
   TABLE DATA               6   COPY public.ustad (id, name, address, cp) FROM stdin;
    public       postgres    false    339   ��      �          0    26663    worship_place 
   TABLE DATA               �   COPY public.worship_place (geom, id, name, address, land_size, park_area_size, building_size, capacity, est, last_renovation, jamaah, imam, teenager, id_category, image) FROM stdin;
    public       postgres    false    340   ��      �          0    26669    worship_place_gallery 
   TABLE DATA               Y   COPY public.worship_place_gallery (serial_number, id, gallery_worship_place) FROM stdin;
    public       postgres    false    341   �      �           0    0    kuliner_region_gid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kuliner_region_gid_seq', 127, true);
            public       postgres    false    320            8           2606    26689 2   detail_facility_tourism PK Detail Facility Tourism 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "PK Detail Facility Tourism" PRIMARY KEY (id_tourism, id_facility);
 ^   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "PK Detail Facility Tourism";
       public         postgres    false    296    296            ]           2606    26691 $   facility_tourism PK Facility Tourism 
   CONSTRAINT     d   ALTER TABLE ONLY public.facility_tourism
    ADD CONSTRAINT "PK Facility Tourism" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.facility_tourism DROP CONSTRAINT "PK Facility Tourism";
       public         postgres    false    314                       2606    26693     angkot_gallery PK Gallery Angkot 
   CONSTRAINT     o   ALTER TABLE ONLY public.angkot_gallery
    ADD CONSTRAINT "PK Gallery Angkot" PRIMARY KEY (serial_number, id);
 L   ALTER TABLE ONLY public.angkot_gallery DROP CONSTRAINT "PK Gallery Angkot";
       public         postgres    false    284    284            d           2606    26695    hotel_type PK TIPE HOTEL 
   CONSTRAINT     X   ALTER TABLE ONLY public.hotel_type
    ADD CONSTRAINT "PK TIPE HOTEL" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hotel_type DROP CONSTRAINT "PK TIPE HOTEL";
       public         postgres    false    317            �           2606    26697    tourism_type PK Tourism Tipe 
   CONSTRAINT     \   ALTER TABLE ONLY public.tourism_type
    ADD CONSTRAINT "PK Tourism Tipe" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tourism_type DROP CONSTRAINT "PK Tourism Tipe";
       public         postgres    false    337            :           2606    26699    detail_hotel PK ah 
   CONSTRAINT     c   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "PK ah" PRIMARY KEY (id_angkot, id_hotel);
 >   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "PK ah";
       public         postgres    false    297    297            J           2606    26701    detail_tourism PK atw 
   CONSTRAINT     h   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "PK atw" PRIMARY KEY (id_angkot, id_tourism);
 A   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "PK atw";
       public         postgres    false    305    305            �           2606    26703 "   tourism_gallery PK tourism gallery 
   CONSTRAINT     m   ALTER TABLE ONLY public.tourism_gallery
    ADD CONSTRAINT "PK tourism gallery" PRIMARY KEY (serial_number);
 N   ALTER TABLE ONLY public.tourism_gallery DROP CONSTRAINT "PK tourism gallery";
       public         postgres    false    336                       2606    26705 &   admin_restaurant admin_restaurant_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.admin_restaurant
    ADD CONSTRAINT admin_restaurant_pkey PRIMARY KEY (username);
 P   ALTER TABLE ONLY public.admin_restaurant DROP CONSTRAINT admin_restaurant_pkey;
       public         postgres    false    280                       2606    26707    angkot_color angkot_color_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.angkot_color
    ADD CONSTRAINT angkot_color_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.angkot_color DROP CONSTRAINT angkot_color_pkey;
       public         postgres    false    283                       2606    26709    angkot angkot_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.angkot
    ADD CONSTRAINT angkot_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.angkot DROP CONSTRAINT angkot_pk;
       public         postgres    false    282            4           2606    26711 0   detail_facility_hotel detail_facility_hotel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT detail_facility_hotel_pkey PRIMARY KEY (id_hotel, id_facility);
 Z   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT detail_facility_hotel_pkey;
       public         postgres    false    294    294            0           2606    26713 $   detail_facility detail_facility_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT detail_facility_pkey PRIMARY KEY (id_facility, id_worship_place);
 N   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT detail_facility_pkey;
       public         postgres    false    292    292            6           2606    26715 :   detail_facility_restaurant detail_facility_restaurant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT detail_facility_restaurant_pkey PRIMARY KEY (id_facility, id_restaurant);
 d   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT detail_facility_restaurant_pkey;
       public         postgres    false    295    295            Y           2606    26717 "   facility_hotel facility_hotel_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.facility_hotel
    ADD CONSTRAINT facility_hotel_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.facility_hotel DROP CONSTRAINT facility_hotel_pkey;
       public         postgres    false    312            [           2606    26719 ,   facility_restaurant facility_restaurant_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.facility_restaurant
    ADD CONSTRAINT facility_restaurant_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.facility_restaurant DROP CONSTRAINT facility_restaurant_pkey;
       public         postgres    false    313            b           2606    26721     hotel_gallery hotel_gallery_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hotel_gallery
    ADD CONSTRAINT hotel_gallery_pkey PRIMARY KEY (serial_number);
 J   ALTER TABLE ONLY public.hotel_gallery DROP CONSTRAINT hotel_gallery_pkey;
       public         postgres    false    316            �           2606    26723    worship_place id 
   CONSTRAINT     N   ALTER TABLE ONLY public.worship_place
    ADD CONSTRAINT id PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.worship_place DROP CONSTRAINT id;
       public         postgres    false    340                       2606    26725     administrators id_administrators 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT id_administrators PRIMARY KEY (stewardship_period, id_worship_place);
 J   ALTER TABLE ONLY public.administrators DROP CONSTRAINT id_administrators;
       public         postgres    false    281    281            !           2606    26727 "   category_worship_place id_category 
   CONSTRAINT     `   ALTER TABLE ONLY public.category_worship_place
    ADD CONSTRAINT id_category PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.category_worship_place DROP CONSTRAINT id_category;
       public         postgres    false    285            %           2606    26729 $   culinary_gallery id_culinary_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.culinary_gallery
    ADD CONSTRAINT id_culinary_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.culinary_gallery DROP CONSTRAINT id_culinary_gallery;
       public         postgres    false    287    287            '           2606    26731     culinary_place id_culinary_place 
   CONSTRAINT     ^   ALTER TABLE ONLY public.culinary_place
    ADD CONSTRAINT id_culinary_place PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.culinary_place DROP CONSTRAINT id_culinary_place;
       public         postgres    false    288            *           2606    26733 "   detail_culinary id_detail_culinary 
   CONSTRAINT     |   ALTER TABLE ONLY public.detail_culinary
    ADD CONSTRAINT id_detail_culinary PRIMARY KEY (id_culinary_place, id_culinary);
 L   ALTER TABLE ONLY public.detail_culinary DROP CONSTRAINT id_detail_culinary;
       public         postgres    false    289    289            ,           2606    26735 .   detail_culinary_place id_detail_culinary_place 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary_place
    ADD CONSTRAINT id_detail_culinary_place PRIMARY KEY (id_culinary_place, id_angkot);
 X   ALTER TABLE ONLY public.detail_culinary_place DROP CONSTRAINT id_detail_culinary_place;
       public         postgres    false    290    290            .           2606    26737    detail_event id_detail_event 
   CONSTRAINT     v   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_detail_event PRIMARY KEY (date, "time", id_worship_place);
 F   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_detail_event;
       public         postgres    false    291    291    291            2           2606    26739 4   detail_facility_culinary id_detail_facility_culinary 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_detail_facility_culinary PRIMARY KEY (id_culinary_place, id_facility);
 ^   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_detail_facility_culinary;
       public         postgres    false    293    293            <           2606    26741    detail_menu id_detail_menu 
   CONSTRAINT     t   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_detail_menu PRIMARY KEY (id_restaurant, id_special_menu);
 D   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_detail_menu;
       public         postgres    false    298    298            >           2606    26743 8   detail_product_small_industry id_detail_product_industry 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_detail_product_industry PRIMARY KEY (id_product, id_small_industry);
 b   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_detail_product_industry;
       public         postgres    false    299    299            @           2606    26745 2   detail_product_souvenir id_detail_product_souvenir 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_detail_product_souvenir PRIMARY KEY (id_product, id_souvenir);
 \   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_detail_product_souvenir;
       public         postgres    false    300    300            B           2606    26747 &   detail_restaurant id_detail_restaurant 
   CONSTRAINT     z   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT id_detail_restaurant PRIMARY KEY (id_angkot, id_restaurant);
 P   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT id_detail_restaurant;
       public         postgres    false    301    301            F           2606    26749 .   detail_small_industry id_detail_small_industry 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_detail_small_industry PRIMARY KEY (id_angkot, id_small_industry);
 X   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_detail_small_industry;
       public         postgres    false    303    303            H           2606    26751 "   detail_souvenir id_detail_souvenir 
   CONSTRAINT     t   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_detail_souvenir PRIMARY KEY (id_souvenir, id_angkot);
 L   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_detail_souvenir;
       public         postgres    false    304    304            L           2606    26753 ,   detail_worship_place id_detail_worship_place 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_detail_worship_place PRIMARY KEY (id_angkot, id_worship_place);
 V   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_detail_worship_place;
       public         postgres    false    306    306            N           2606    26755    district id_district 
   CONSTRAINT     R   ALTER TABLE ONLY public.district
    ADD CONSTRAINT id_district PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.district DROP CONSTRAINT id_district;
       public         postgres    false    307            Q           2606    26757    event id_event 
   CONSTRAINT     L   ALTER TABLE ONLY public.event
    ADD CONSTRAINT id_event PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.event DROP CONSTRAINT id_event;
       public         postgres    false    308            W           2606    26759    facility_culinary id_facility 
   CONSTRAINT     [   ALTER TABLE ONLY public.facility_culinary
    ADD CONSTRAINT id_facility PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.facility_culinary DROP CONSTRAINT id_facility;
       public         postgres    false    311            U           2606    26761 (   facility_condition id_facility_condition 
   CONSTRAINT     f   ALTER TABLE ONLY public.facility_condition
    ADD CONSTRAINT id_facility_condition PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.facility_condition DROP CONSTRAINT id_facility_condition;
       public         postgres    false    310            S           2606    26763 "   facility id_facility_worship_place 
   CONSTRAINT     `   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT id_facility_worship_place PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.facility DROP CONSTRAINT id_facility_worship_place;
       public         postgres    false    309            f           2606    26765 $   industry_gallery id_industry_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.industry_gallery
    ADD CONSTRAINT id_industry_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.industry_gallery DROP CONSTRAINT id_industry_gallery;
       public         postgres    false    318    318            h           2606    26767    industry_type id_jenis_industry 
   CONSTRAINT     ]   ALTER TABLE ONLY public.industry_type
    ADD CONSTRAINT id_jenis_industry PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.industry_type DROP CONSTRAINT id_jenis_industry;
       public         postgres    false    319            �           2606    26769    souvenir_type id_jenis_oleh 
   CONSTRAINT     Y   ALTER TABLE ONLY public.souvenir_type
    ADD CONSTRAINT id_jenis_oleh PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.souvenir_type DROP CONSTRAINT id_jenis_oleh;
       public         postgres    false    331            #           2606    26771    culinary id_kuliner 
   CONSTRAINT     Q   ALTER TABLE ONLY public.culinary
    ADD CONSTRAINT id_kuliner PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.culinary DROP CONSTRAINT id_kuliner;
       public         postgres    false    286            l           2606    26773 0   product_small_industry id_product_small_industry 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_small_industry
    ADD CONSTRAINT id_product_small_industry PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_small_industry DROP CONSTRAINT id_product_small_industry;
       public         postgres    false    322            s           2606    26775 *   restaurant_category id_restaurant_category 
   CONSTRAINT     h   ALTER TABLE ONLY public.restaurant_category
    ADD CONSTRAINT id_restaurant_category PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.restaurant_category DROP CONSTRAINT id_restaurant_category;
       public         postgres    false    325            u           2606    26777 (   restaurant_gallery id_restaurant_gallery 
   CONSTRAINT     u   ALTER TABLE ONLY public.restaurant_gallery
    ADD CONSTRAINT id_restaurant_gallery PRIMARY KEY (serial_number, id);
 R   ALTER TABLE ONLY public.restaurant_gallery DROP CONSTRAINT id_restaurant_gallery;
       public         postgres    false    326    326            y           2606    26779     small_industry id_small_industry 
   CONSTRAINT     ^   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT id_small_industry PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT id_small_industry;
       public         postgres    false    328            |           2606    26781    souvenir id_souvenir 
   CONSTRAINT     R   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT id_souvenir PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT id_souvenir;
       public         postgres    false    329            ~           2606    26783 $   souvenir_gallery id_souvenir_gallery 
   CONSTRAINT     q   ALTER TABLE ONLY public.souvenir_gallery
    ADD CONSTRAINT id_souvenir_gallery PRIMARY KEY (serial_number, id);
 N   ALTER TABLE ONLY public.souvenir_gallery DROP CONSTRAINT id_souvenir_gallery;
       public         postgres    false    330    330            n           2606    26785 $   product_souvenir id_souvenir_product 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_souvenir
    ADD CONSTRAINT id_souvenir_product PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_souvenir DROP CONSTRAINT id_souvenir_product;
       public         postgres    false    323            �           2606    26787    special_menu id_special_menu 
   CONSTRAINT     Z   ALTER TABLE ONLY public.special_menu
    ADD CONSTRAINT id_special_menu PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.special_menu DROP CONSTRAINT id_special_menu;
       public         postgres    false    332            �           2606    26789    status id_status 
   CONSTRAINT     N   ALTER TABLE ONLY public.status
    ADD CONSTRAINT id_status PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.status DROP CONSTRAINT id_status;
       public         postgres    false    334            �           2606    26791    type_event id_type_event 
   CONSTRAINT     V   ALTER TABLE ONLY public.type_event
    ADD CONSTRAINT id_type_event PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.type_event DROP CONSTRAINT id_type_event;
       public         postgres    false    338            �           2606    26793    ustad id_ustad 
   CONSTRAINT     L   ALTER TABLE ONLY public.ustad
    ADD CONSTRAINT id_ustad PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ustad DROP CONSTRAINT id_ustad;
       public         postgres    false    339            �           2606    26795 .   worship_place_gallery id_worship_place_gallery 
   CONSTRAINT     {   ALTER TABLE ONLY public.worship_place_gallery
    ADD CONSTRAINT id_worship_place_gallery PRIMARY KEY (serial_number, id);
 X   ALTER TABLE ONLY public.worship_place_gallery DROP CONSTRAINT id_worship_place_gallery;
       public         postgres    false    341    341            w           2606    26797    room pk 
   CONSTRAINT     E   ALTER TABLE ONLY public.room
    ADD CONSTRAINT pk PRIMARY KEY (id);
 1   ALTER TABLE ONLY public.room DROP CONSTRAINT pk;
       public         postgres    false    327            D           2606    26799    detail_room pk detail room 
   CONSTRAINT     i   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "pk detail room" PRIMARY KEY (id_room, id_hotel);
 F   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "pk detail room";
       public         postgres    false    302    302            `           2606    26801    hotel pk hotel 
   CONSTRAINT     N   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT "pk hotel" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT "pk hotel";
       public         postgres    false    315            �           2606    26803    tourism pk tourism 
   CONSTRAINT     R   ALTER TABLE ONLY public.tourism
    ADD CONSTRAINT "pk tourism" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tourism DROP CONSTRAINT "pk tourism";
       public         postgres    false    335            q           2606    26805    restaurant pk_restaurant 
   CONSTRAINT     V   ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT pk_restaurant PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.restaurant DROP CONSTRAINT pk_restaurant;
       public         postgres    false    324            j           2606    26807    login username 
   CONSTRAINT     R   ALTER TABLE ONLY public.login
    ADD CONSTRAINT username PRIMARY KEY (username);
 8   ALTER TABLE ONLY public.login DROP CONSTRAINT username;
       public         postgres    false    321            o           1259    26808    agen1_region_region_geom_gist    INDEX     S   CREATE INDEX agen1_region_region_geom_gist ON public.restaurant USING gist (geom);
 1   DROP INDEX public.agen1_region_region_geom_gist;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    324            ^           1259    26809    hotel_region_geom_idx    INDEX     F   CREATE INDEX hotel_region_geom_idx ON public.hotel USING gist (geom);
 )   DROP INDEX public.hotel_region_geom_idx;
       public         postgres    false    315    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            z           1259    26810    industri_kecil_region_geom_idx    INDEX     X   CREATE INDEX industri_kecil_region_geom_idx ON public.small_industry USING gist (geom);
 2   DROP INDEX public.industri_kecil_region_geom_idx;
       public         postgres    false    328    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            O           1259    26811    kecamatan_region_geom_gist    INDEX     N   CREATE INDEX kecamatan_region_geom_gist ON public.district USING gist (geom);
 .   DROP INDEX public.kecamatan_region_geom_gist;
       public         postgres    false    307    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            (           1259    26812    kuliner_region_geom_idx    INDEX     Q   CREATE INDEX kuliner_region_geom_idx ON public.culinary_place USING gist (geom);
 +   DROP INDEX public.kuliner_region_geom_idx;
       public         postgres    false    288    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9            �           1259    26813    mesjid_region_geom_idx    INDEX     O   CREATE INDEX mesjid_region_geom_idx ON public.worship_place USING gist (geom);
 *   DROP INDEX public.mesjid_region_geom_idx;
       public         postgres    false    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    9    340            �           2606    26814    tourism FK Tipe Tourism    FK CONSTRAINT        ALTER TABLE ONLY public.tourism
    ADD CONSTRAINT "FK Tipe Tourism" FOREIGN KEY (id_type) REFERENCES public.tourism_type(id);
 C   ALTER TABLE ONLY public.tourism DROP CONSTRAINT "FK Tipe Tourism";
       public       postgres    false    337    335    5002            �           2606    26819    detail_hotel FK angkot    FK CONSTRAINT     z   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "FK angkot" FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 B   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "FK angkot";
       public       postgres    false    282    297    4891            �           2606    26824    detail_tourism FK angkot    FK CONSTRAINT     |   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "FK angkot" FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 D   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "FK angkot";
       public       postgres    false    282    4891    305            �           2606    26829 #   detail_facility_tourism FK facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "FK facility" FOREIGN KEY (id_facility) REFERENCES public.facility_tourism(id);
 O   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "FK facility";
       public       postgres    false    296    314    4957            �           2606    26834    detail_hotel FK hotel    FK CONSTRAINT     w   ALTER TABLE ONLY public.detail_hotel
    ADD CONSTRAINT "FK hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 A   ALTER TABLE ONLY public.detail_hotel DROP CONSTRAINT "FK hotel";
       public       postgres    false    315    4960    297            �           2606    26839    angkot_gallery FK id Gallery    FK CONSTRAINT     y   ALTER TABLE ONLY public.angkot_gallery
    ADD CONSTRAINT "FK id Gallery" FOREIGN KEY (id) REFERENCES public.angkot(id);
 H   ALTER TABLE ONLY public.angkot_gallery DROP CONSTRAINT "FK id Gallery";
       public       postgres    false    284    4891    282            �           2606    26844    tourism_gallery FK id tourism    FK CONSTRAINT     {   ALTER TABLE ONLY public.tourism_gallery
    ADD CONSTRAINT "FK id tourism" FOREIGN KEY (id) REFERENCES public.tourism(id);
 I   ALTER TABLE ONLY public.tourism_gallery DROP CONSTRAINT "FK id tourism";
       public       postgres    false    336    4998    335            �           2606    26849 %   detail_facility_tourism FK id tourism    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_tourism
    ADD CONSTRAINT "FK id tourism" FOREIGN KEY (id_tourism) REFERENCES public.tourism(id);
 Q   ALTER TABLE ONLY public.detail_facility_tourism DROP CONSTRAINT "FK id tourism";
       public       postgres    false    296    4998    335            �           2606    26854    detail_tourism FK tw    FK CONSTRAINT     z   ALTER TABLE ONLY public.detail_tourism
    ADD CONSTRAINT "FK tw" FOREIGN KEY (id_tourism) REFERENCES public.tourism(id);
 @   ALTER TABLE ONLY public.detail_tourism DROP CONSTRAINT "FK tw";
       public       postgres    false    4998    305    335            �           2606    26859    hotel FK type hotel    FK CONSTRAINT     y   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT "FK type hotel" FOREIGN KEY (id_type) REFERENCES public.hotel_type(id);
 ?   ALTER TABLE ONLY public.hotel DROP CONSTRAINT "FK type hotel";
       public       postgres    false    315    317    4964            �           2606    26864    angkot angkot_color    FK CONSTRAINT     z   ALTER TABLE ONLY public.angkot
    ADD CONSTRAINT angkot_color FOREIGN KEY (id_color) REFERENCES public.angkot_color(id);
 =   ALTER TABLE ONLY public.angkot DROP CONSTRAINT angkot_color;
       public       postgres    false    283    4893    282            �           2606    26869 F   detail_facility_restaurant detail_facility_restaurant_id_facility_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT detail_facility_restaurant_id_facility_fkey FOREIGN KEY (id_facility) REFERENCES public.facility_restaurant(id);
 p   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT detail_facility_restaurant_id_facility_fkey;
       public       postgres    false    4955    295    313            �           2606    26874    detail_room fk id_hotel    FK CONSTRAINT     y   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "fk id_hotel" FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 C   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "fk id_hotel";
       public       postgres    false    302    4960    315            �           2606    26879    detail_room fk id_room    FK CONSTRAINT     v   ALTER TABLE ONLY public.detail_room
    ADD CONSTRAINT "fk id_room" FOREIGN KEY (id_room) REFERENCES public.room(id);
 B   ALTER TABLE ONLY public.detail_room DROP CONSTRAINT "fk id_room";
       public       postgres    false    4983    327    302            �           2606    26884    detail_facility fk_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT fk_facility FOREIGN KEY (id_facility) REFERENCES public.facility(id);
 E   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT fk_facility;
       public       postgres    false    292    309    4947            �           2606    26889 !   detail_restaurant fk_restaurantye    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT fk_restaurantye FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 K   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT fk_restaurantye;
       public       postgres    false    324    301    4977            �           2606    26894    administrators id    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT id FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 ;   ALTER TABLE ONLY public.administrators DROP CONSTRAINT id;
       public       postgres    false    5008    340    281            �           2606    26899    worship_place_gallery id    FK CONSTRAINT     z   ALTER TABLE ONLY public.worship_place_gallery
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.worship_place(id);
 B   ALTER TABLE ONLY public.worship_place_gallery DROP CONSTRAINT id;
       public       postgres    false    340    5008    341            �           2606    26904    detail_worship_place id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 H   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_angkot;
       public       postgres    false    4891    306    282            �           2606    26909    detail_restaurant id_angkot    FK CONSTRAINT     }   ALTER TABLE ONLY public.detail_restaurant
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 E   ALTER TABLE ONLY public.detail_restaurant DROP CONSTRAINT id_angkot;
       public       postgres    false    282    301    4891            �           2606    26914    detail_culinary_place id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary_place
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 I   ALTER TABLE ONLY public.detail_culinary_place DROP CONSTRAINT id_angkot;
       public       postgres    false    282    290    4891            �           2606    26919    detail_small_industry id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 I   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_angkot;
       public       postgres    false    282    303    4891            �           2606    26924    detail_souvenir id_angkot    FK CONSTRAINT     {   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 C   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_angkot;
       public       postgres    false    282    304    4891            �           2606    26929    worship_place id_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.worship_place
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES public.category_worship_place(id);
 C   ALTER TABLE ONLY public.worship_place DROP CONSTRAINT id_category;
       public       postgres    false    285    340    4897            �           2606    26934    detail_culinary id_culinary    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_culinary
    ADD CONSTRAINT id_culinary FOREIGN KEY (id_culinary) REFERENCES public.culinary(id);
 E   ALTER TABLE ONLY public.detail_culinary DROP CONSTRAINT id_culinary;
       public       postgres    false    289    4899    286            �           2606    26939 +   detail_facility_culinary id_culinary_placee    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_culinary_placee FOREIGN KEY (id_culinary_place) REFERENCES public.culinary_place(id);
 U   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_culinary_placee;
       public       postgres    false    293    4903    288            �           2606    26944    detail_event id_event    FK CONSTRAINT     u   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_event FOREIGN KEY (id_event) REFERENCES public.event(id);
 ?   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_event;
       public       postgres    false    308    291    4945            �           2606    26949 !   detail_facility_hotel id_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT id_facility FOREIGN KEY (id_facility) REFERENCES public.facility_hotel(id);
 K   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT id_facility;
       public       postgres    false    294    312    4953            �           2606    26954 %   detail_facility id_facility_condition    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT id_facility_condition FOREIGN KEY (id_facility_condition) REFERENCES public.facility_condition(id);
 O   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT id_facility_condition;
       public       postgres    false    4949    292    310            �           2606    26959 #   detail_facility_culinary id_fas_cul    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_culinary
    ADD CONSTRAINT id_fas_cul FOREIGN KEY (id_facility) REFERENCES public.facility_culinary(id);
 M   ALTER TABLE ONLY public.detail_facility_culinary DROP CONSTRAINT id_fas_cul;
       public       postgres    false    293    4951    311            �           2606    26964    detail_facility_hotel id_hotel    FK CONSTRAINT     ~   ALTER TABLE ONLY public.detail_facility_hotel
    ADD CONSTRAINT id_hotel FOREIGN KEY (id_hotel) REFERENCES public.hotel(id);
 H   ALTER TABLE ONLY public.detail_facility_hotel DROP CONSTRAINT id_hotel;
       public       postgres    false    294    4960    315            �           2606    26969    small_industry id_industry_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.small_industry
    ADD CONSTRAINT id_industry_type FOREIGN KEY (id_industry_type) REFERENCES public.industry_type(id);
 I   ALTER TABLE ONLY public.small_industry DROP CONSTRAINT id_industry_type;
       public       postgres    false    328    319    4968            �           2606    26974 (   detail_product_small_industry id_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product_small_industry(id);
 R   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_product;
       public       postgres    false    4972    322    299            �           2606    26979 "   detail_product_souvenir id_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product_souvenir(id);
 L   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_product;
       public       postgres    false    300    323    4974            �           2606    26984    detail_menu id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 D   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_restaurant_;
       public       postgres    false    4977    324    298            �           2606    26989 )   detail_facility_restaurant id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility_restaurant
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id_restaurant) REFERENCES public.restaurant(id);
 S   ALTER TABLE ONLY public.detail_facility_restaurant DROP CONSTRAINT id_restaurant_;
       public       postgres    false    324    4977    295            �           2606    26994 !   restaurant_gallery id_restaurant_    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurant_gallery
    ADD CONSTRAINT id_restaurant_ FOREIGN KEY (id) REFERENCES public.restaurant(id);
 K   ALTER TABLE ONLY public.restaurant_gallery DROP CONSTRAINT id_restaurant_;
       public       postgres    false    324    4977    326            �           2606    26999 /   detail_product_small_industry id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_small_industry
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id_small_industry) REFERENCES public.small_industry(id);
 Y   ALTER TABLE ONLY public.detail_product_small_industry DROP CONSTRAINT id_small_industry;
       public       postgres    false    4985    328    299            �           2606    27004 '   detail_small_industry id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_small_industry
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id_small_industry) REFERENCES public.small_industry(id);
 Q   ALTER TABLE ONLY public.detail_small_industry DROP CONSTRAINT id_small_industry;
       public       postgres    false    328    303    4985            �           2606    27009 "   industry_gallery id_small_industry    FK CONSTRAINT     �   ALTER TABLE ONLY public.industry_gallery
    ADD CONSTRAINT id_small_industry FOREIGN KEY (id) REFERENCES public.small_industry(id);
 L   ALTER TABLE ONLY public.industry_gallery DROP CONSTRAINT id_small_industry;
       public       postgres    false    328    4985    318            �           2606    27014 #   detail_product_souvenir id_souvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_product_souvenir
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 M   ALTER TABLE ONLY public.detail_product_souvenir DROP CONSTRAINT id_souvenir;
       public       postgres    false    329    4988    300            �           2606    27019    detail_souvenir id_souvenir    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_souvenir
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id_souvenir) REFERENCES public.souvenir(id);
 E   ALTER TABLE ONLY public.detail_souvenir DROP CONSTRAINT id_souvenir;
       public       postgres    false    4988    329    304            �           2606    27024    souvenir_gallery id_souvenir    FK CONSTRAINT     y   ALTER TABLE ONLY public.souvenir_gallery
    ADD CONSTRAINT id_souvenir FOREIGN KEY (id) REFERENCES public.souvenir(id);
 F   ALTER TABLE ONLY public.souvenir_gallery DROP CONSTRAINT id_souvenir;
       public       postgres    false    330    329    4988            �           2606    27029    souvenir id_souvenir_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.souvenir
    ADD CONSTRAINT id_souvenir_type FOREIGN KEY (id_souvenir_type) REFERENCES public.souvenir_type(id);
 C   ALTER TABLE ONLY public.souvenir DROP CONSTRAINT id_souvenir_type;
       public       postgres    false    329    331    4992            �           2606    27034    detail_menu id_special_menu_    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_menu
    ADD CONSTRAINT id_special_menu_ FOREIGN KEY (id_special_menu) REFERENCES public.special_menu(id);
 F   ALTER TABLE ONLY public.detail_menu DROP CONSTRAINT id_special_menu_;
       public       postgres    false    298    332    4994            �           2606    27039    event id_type_event    FK CONSTRAINT     }   ALTER TABLE ONLY public.event
    ADD CONSTRAINT id_type_event FOREIGN KEY (id_type_event) REFERENCES public.type_event(id);
 =   ALTER TABLE ONLY public.event DROP CONSTRAINT id_type_event;
       public       postgres    false    5004    308    338            �           2606    27044    detail_event id_ustad    FK CONSTRAINT     u   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_ustad FOREIGN KEY (id_ustad) REFERENCES public.ustad(id);
 ?   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_ustad;
       public       postgres    false    291    5006    339            �           2606    27049    detail_event id_worship    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_event
    ADD CONSTRAINT id_worship FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 A   ALTER TABLE ONLY public.detail_event DROP CONSTRAINT id_worship;
       public       postgres    false    291    340    5008            �           2606    27054     detail_facility id_worship_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_facility
    ADD CONSTRAINT id_worship_place FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 J   ALTER TABLE ONLY public.detail_facility DROP CONSTRAINT id_worship_place;
       public       postgres    false    5008    292    340            �           2606    27059 %   detail_worship_place id_worship_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_worship_place FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 O   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_worship_place;
       public       postgres    false    306    340    5008            F   4   x�KL����L66�0I1H�4130KI5LK1JL347JLJ44MJ3����� !g�      G   �  x��Yَ�}nE@ܨ}�ۑ�H04
y���\F!���>���hX� A��T���s��q�`�fX�2�w�����4���/t��<����40���Jii���@���$�\�R�RJ�E�������P1�g�{�GnVܮ�����������e����q9nh;���Kގ���6o<0���~�bf|̉��*�T����2%^���
ޯ�Y	;	m���)�o�@e�,���q>��ϗ{;�g ޜ#�7�B1<�9\����B1�X�����+�&��w�7{J�9m�7�����-��J+m,��-�$��p�$��Hٱ$�1ֆ�ʜ!铷L���+���J���ݕ9rP�r�����)F\'��	V)Y4i��gXξ�zdl%�J��Zf��2-���"����r\�T�^��e0!d�q^��1�lJ̲6b�����(����]�2}������aI	��>�=���Z��K�\�ZM�6�O�xeK�YdO��]dֈĄ����&Wr�ʠp�G�nxKa������!��x�%���֗�[�|�9�̐|х1���RF�s�����")u�z�Մ�ᦫ �ûC:�p�����7E�F%9�|	"K:#�STR��S2:�r�Bwijp4��])��벛���r<О��,�m�4�����U�}�<���IV�a���J�hU����X�7��A6��f�{��k�����h�Cl��r��������IQs�c<�E*!� ��cQ��A2�y�GV�M�g��)��N�M���ßƻ��$��Pu}%��U�2s�;���u����g�4f�� ���nMmm%���w���H�㲻%=%���p�`hH��QV{f��Rk��7�(�_Bp�]	?i�eG���:l�_\Ɵ���:��%�=����b�D��,�����fY%/�q�n��d��}�+�M���r����\H2P�9�@^�e4Q"&UEס�y^;��Z^�6u�k��4�}?�5Y���hwaud��H���o�nd`[�Rbb�b�v���Q�y7�Y��ˀ�:��_�w��O�8��3VL��;��������o4�bvrN�/�n��7�m�j�+��lBC�J�E��M2��ֿ��5+��~3V�~�W�=}e����"���	�̙��R%�
Ż���j%PW�6���O��Vt����
ǻX~��f��@{��7p�l��3YR�n���ٖ��"K|������t+���>=��4�t^#w����8���6?ֈzƚT�ȼ�
g(�$�(J]\��_I�,��ԕ����2~����~G����	�Զ��A����pC2Bƅ��A^�J�?�^)5q��9ߪ�@���74o7�]>����aC��+���QN-| er��6Jx��e��&�kyџ�V��f��mû%�_^!o|,�X�.!�$=A8Yoɫ M9����˖w,��ԤМ��m��i=P������x]_C �xt���������!n�f�s�Cc��I3e:`5�X
t��#�^'}f4��s��ElW�Z�$�)�N�ã������!m�q���E�n�˼�$�*XVw��}�SR&b��͒���BG�	m�;p-VL��"���?i�Ǿz;'z���&�9�lҾE�R&�VIép2:3H�L=����P(y^I���p�ݘ-ۮZ�]�q�;�!ј�٨���}�����<�8�x�]t��ҿ�J�b
ǏӨ���2����lb �R�Ϥ9%�Y;��:�|�T���w}�nO�fΎ�yX�ã�)�%�mY�n�cck ����4Р9BK+�A}SG��E(�����ȍ�ع��-r��%���Qa!��Ҷ����zc�*O��,��"ch?T��Zv�؍;@�u����9(b}��G�RrH5C�Y(�+x������A�U����P��
��`u�^���������B�wW�b�X�7�~K=���?/��ـ3��*!�.E;lFk�'e�4S�3Վ��b�*V\�Um�*K>�@��|�߰3��[�av��O-l�B�{�aRhf4���� v��r̀�'���H��'�n�M����mͫ(���H9h�Ja�"̴�Qd첾ª6F�ڮ�[�i�>Cr� w7��I���8���R�(�*)��C'A�#AL�:hQ���*�_\� �OՀ�e���u2k�}�q:F�j�
8�)P�r�rn�_�4ԙ_��vX���v�?�iw��J����������J��,��"l䁔�5Q7�X\
�έShR_��T�s{��}X��|�ʤ2uq�sd�y��\�/�V�����/���q9�{�-��P��a����.�ں���]kXa����W���Ȕ�2�gqu�ܝ��W����8���/V�L}���Aq�D9X=&[����Gr����7�fO9�e�G�����H�ƪm�k@Ą�,\22C�&)�
���ٗ=��P��w�I�o�^�ߗ�������{T/vy�8��v�)0��è�ʜ6u���͞�?�L�|�;��l���^�^�x�m2��:��׭��y��X�����������SI�١���|?,PJU�yG��q��S��E��0�q���Z
�X��
ʢ�b�`�v�=��Sf�/J���d����3~�����P�w���N�؈%�c�D����9�۫?�b+���o�"����=-����F~��?�_�������S	"idBG#���j�n�I\��T}��w��ǻ'(��/~Yx���NR��y�A��<�� \`N���������w���~zx�Y7͛�3�?:Fm	�<� �Z-X:��7�õ������zȓ��41��ڻC~7�\��+	�u���-|H%�l��<�e�ZP`d ���OP_~&8��=���ư����W�&�VmV����}!Bck�<�R��B���!t�G�|�4\�J�n־Ё�y����-�?�6]�
�ET7������B�n�ɢ�t�Rn���kr&+�����ƻǩ=��~��������9R�߇���&V�$��"$c[D+T�B�j��fX}���K7�����8�9�e/xiƠ�@.k�F-N���[����U�K����zW�}���r�y?�����5�����³!����A�_1��G'DId]&�_��`#g������E�.������$�<߼|Azz8�pW���m��}������J;I؇�	��Z��3m�+��R��[l}���#���,V2W���b�۾�	��Mwu�tD�a/��k���>��
�h�P��p���c+2�@���\M��K+�X�"S0?B�����Π2��q���T�6�<�1�"��D��{U-�l_�@�H��N�}�� ��      H      x����%�q$������d�#��h���(jT�dS�!�ؿ_�p�̪�"5Z찫�2Od\�����+��O_��ۿ�������������~������������/?��_~������|����.w�K��=���?J���WW�cWR���s�\Sة�0�R�g��6]m������X�-�Ye�Wb���x�}��=���Zr�C3���j�Jam���%�g������s�s:�s�xhm�؇��0
���W>��-����]��v��W�8�g��e�y��&���}��N.�Y��1���ru��2�tk�(����W��8Vs����2^��]j�s��ZG�{�2���\e�5r��R���X2>��n�]K���]�a����a��n^����W�+zLB�o��������#�I��q��iֳ~�~��}{N�s�R����Z�
=?��|��w�*�����{��D��Ηog��wco�]����Ķ�6����8���
e�R���OO��q��u�}�0sH���}�.�{��3�G!`C�8�.��W�I�ga�׊�ϳ>1�;W�
��;��y�>�St=���>|��T���>��gI�_����>���?l�=�����p*W��]�\�t���q�m���˸�������k>T?����a�Z���a��{L1��+�u�}Wv���ͯ���ث�p�]��ӗ�5�@�x��W�nȸs	�����ϛ�e�e|c7v�m�<9�|Y{c�c��Gy>ԌI����wH��Ҽ���k�R��4�x�V��������6������������~k�2�>_��=`;C�g~%����}�}��>�<�]H��d|@:����Y��n�1���~ڱ�_:�s�ݜ���>�P�]���x������.�Q����U�繏-p�nP��d�	�G�wk�����yӭ��pE�c\�3�p�&��K�Nnu���mM�eX�`w6nH�|�3���߇4X�~�g:���w\��u�{���n�y�Î�K<�g%�qA^��>kA� m��w@s�{������|��E�~�$��_֙?�%�j���fJ�����=��,�����I��%�ƜF�}���}��'�฻q�Ć��冴
#���w\3�����V>�ܯ�u�������֝{;�z��r���C>������`�@z=����Ȏpy��{��U���|5h�{������2���?� ��y�.\�V9���(\���ـȈ#����5l6R�c-�������z�V�����P���?���}�|V�#����Z���[��HP���K�c�?�e���9�.L3'�����V�K�'�ZJ�u���]�b��>�e#����n�� R@���0��?�9�xM�_@u�֡?�~����7eUH1p�S����5�ϰ��kc���CPU����un��Z����P+������y���8l����h,���x�K��eW��� �|�]��/���q� Π�����X�w04q��ѯ��O	�@�� �'n}�/:�G���1��z�	De�c���'�}�1���o��S������ X�����nU�>�Ý�ʮK��>���xA�5H�z��(�p�~__����_Պ�=qm���8�	;t�`�]܂�or ��Þ���!dt}�q�ܝ�Y�o�0]�������  uG��M>C`P-����j��d|]@�z�d�@u���Ӡx<.w���?8��w9:�f��^��y?�ndЙ?vx�����򠗮��;*Kh����� ^���@�CD�����(��� �7@�?��h	?҃/x	(ն�?�E�?�y����?f�_�� �I�.Ր���� �����U��Ѕ�����d��:4��?P��ö�C�a�+�#�q� /÷�6�.���M�x�M~�r�(� ���w5��ס�'�����'Нh�W��^/;ނ�>����Q�WA駃ߧ��_i�|J@��	9��?��� ms�p2���O��?������������˿}���������C�m|�~��?�����_�hpcҺ#�@�3E��S΀[��iW
+7��Q�k0�L� ݛq�����V�8-�oD�|1���,�S�=&��Yn|t�+���9fZ���yg�w `N���T	�!Pa�	r��Cރ��`��ʍ�!����AV��dy-��;d���*;��P���Nn;���r#0���q��f�U��D�p<�彌CT�@�a�����8�)Ng�Xd�(P���y�+����!�zƖ	�l�&�IL��V��@{�a6�j������ǝ�� J`�P���)�2�� �0F�S�D�x�KX-[�(���}�7vuO��@�T��u�/�+N۶��{}GI�84���Mǁ+���+����u!_���0xF��}��2]�\6�; Ng ������%��n��oM'���%�}��'@_�g~}XCx ��*��C	�_���7$��?�? 1Wk���h<�^k#�����Q����~wC�����>^����6�P�@bz>n�l�|�אS�*�����4P`P��t} ؀�� ���~;-܆�X��#�{��� Ul�q=C 1e�fKPs+����L��r�?8P2,�!V@����g1� 3�i����q�@7h�j�|M(�U ��@��}�|����O���W({�X�l|
���"d�C�'Mu`�j�|7b�f�bY�y�����������ǳ� ��͡��LtCeM�B�{���u}Z��8�y������x".[��@�������CA@�W��o2�U꺿 ���@����Y� =�v�~�����6���	2g�3h�T!�!��ƭ�]�<_���l�S`(�L�����/\�ٮ�$|}Xd\r���!=�vw�`P/�7�W�5�9!.�Y߆O��1�� �!% <��q�ph�=?w���2���)���x���]@��?���}�qlskW�]<�W�"�7�SAࠁ��y�2��c��rT�g}�V��K����s~��[��2>
�	��x�ew���7|T;�� �Ү��7���뼿�%(Q�g�Ȁ�m:��]K�Ea��j@��H������TCl�3��۶$�7FsW �E��{�2u���c_�W<��r|B���м�*��ڳ�ѐ��џ�f�^���������*/@m8e�;x��x�qp�����6h$�Iy�5p\I����)�@�܏��^����nO��] !(dM���#����J��*�p�2�q,_��Ѷ�x`��`u�㠑Ư��%Pq�+аs I����ci�Q@�r?+���~C��dA�㒞q\�]n�;H�	�����/@�A^�����Pʣ����VP$�+g���� �g�/\�P��/���Ī&�ߜZ�ɿQ�q8tبs?�r�Fd�3;7r��?�wP$�����ʔ��T�6���4w��� ɣ�ޞ
xY����\9�
��8�>�	�����g�����m<��
�&z�ϋ�U��*V�#?�l+���V,[�����|<>8������I���x�p���H��||�Hqc���$���=�����f�eg�?X	?.zv�~8(s��T�Y�=n���#����4�?;��?;HX* �ٿb>D}?��qkJ=�\+8N�}��A����һc����t�#�ʏۦ?:�� ��E������T�wⲹ +d�V����7����[QG~�U!�ʃ��א�Շ"����m��6���F?���n�j�7 �������@+@���[����؏�~(v����~-���<���5p"ʃ���o�[��}X�5<0����ݦ#'���R���$(�kp�g� r�g�_@�@l��p	��ol0��o �����G�/p:g�i?!���_���?�hbպ�3`;\����u�gr���HoU|��q��>��ɱ˰q�:;P_N,J7� �~�4t 6Q,6�~%�    ^eBl&�B�;���#oc�>�Х�'��w:���A=�8+u�֚�gu�X屘)�+�w��bh�&�
x
��<6I�
}Pg}N��d�(�r��>Q;����!�����]���,97(?�Ţ�q�m��|�����f��������E��7 2yn�h8����7���9�K��_�w~bq��c1�����?��?�ƅ���o������}��w�o���3�O;S��(��L���;�*V
�����^�a�;�q�;霬����d��ǃ�l�M;P�OX��v���\��ά�E=K �`�?��0CoCȘ�F�$�p��2��X����f�. �����P���<��,$�o��7��s���J��Y��se�X��%G5��WԳ�x*�C�йU�i�`�����S�\]f����D<b�����T)!p�q`���_�缔�vz� 8᧚��>0� "�C�/@@s�Zr~���E=�8�����z0�X|���i����٘��7������ܣ�&������<u:��Ѓ�wธ�H�li�硍6�����?s����?آ�`��64D�����F("�8}���2�߆�߹���~w��պv>|����X���Ď��W�-��?8�@��?P>�ex6�a��
�""�dj�2�!�`M�����x60X#Ԁy����4��i5��/c 	t6x~���Ο��)@�Y��>���ϋ1%�UkKdN� "���~��9_P�1N�W��
�!-}��)]��:��K�X��_����� |�����O������ 6���x��6���<T���F{�� /��&^� �9��~��_-�'�d��e�� vM��ǣ��<8
]�Y��"�hI"{�g!
?a���_����6А�g��Eq$�8 �]�9�7ThV����h~L<��X��[4�g���j�)� 0?r��^4��L�>VB��U ɰ�"cV�%�߬����%2D���e���n 7�~0�H1���B�D�]"?n�-2�I�J���9�
Rׯ&����N��Fũz�(�p�������.y�+�#��Z�~B��	����X*�X�q�!u����d�"�*@�DG��"a/)�|�e�x�|G��~2�D��	��I�����p���F�a��=h��'l%����:�6 |-�'2&f�9�x� ��W� Z}\������qo�Q��PzgH"��p弝�����r� ��q��1�	n���E����=�Z�Gv ��b�/���LQ�צ��Ds��c�¢4ٟ��g�1=�-T@H��-��:�QM��{�V�<���ǋCl�z�@+MF��q�{@�~�@�i�v���r�����}��e@4��e�Y�	� ��d'S�?�>G���u��Q���y�`��vp�^�1��M�X�_y��I��6�Q�Ћg~5オ���_2cj㝌g�D��y�oA�a���1 ��u�VΤ�#���)v��a�Id�f��q�Cn;9�8j�@*��a4#m��Rdx�D�BAD`�n��O| �
�mk�?K S��|�i(�ô�/`Tۙ��9��nv���:.�w���i����X~�az��b�C�Ո8O��Gd����]��Y�PC[�}��H#k�-���!�c|����\����2;Q������� �,r)b�< ୑À�9y��Y��Ù_Y"�?�Gb�p����z�0ﶟȨ�<}=���5�=����Qaq�2܆x�#)�VR��LM�wa� ��8`CT`h����zO+o���)�& x8�>�l��1_�`��Y�@'vw3���՞���(�&n�/�B4�ȳ� ��������L��*��J+/$���ܧ��?+ڈ�O��>�<�wA���;�=�h�1�� �kS�7�b� h��ol�XN��� /�<8xg�����}�J�����	�ol|r��H� ���z[�3�'(��Y�7A�q�X�@�#Ç��2�z��f���X�=�qZ,\e� W��( �읳X\���Q�x)0��{�E7TŖ�@)��9�t���� �3ەY~\�y��D�D|b����]+��~������yո'(��� �K�P$Vߑ b�t�.`d��Pw����+�(�gs��m�87de_X<3��J�@�@76"MF��"�r@��x�:p|��'��e�7��?��_���?~�q|��/f�o��^��֌��Q� �LƂ�!���@�^ǭ����Q�*�h�T��maأ%�?��h����4�܂��+����i��B�� ��0� �.�2�E@��K�(0F��د�ş���������cg���,�h���yL۴��܎�XfRc�=B��a���X�R��o��s[DوLq�Yɷ�7�*z�-��q�}�p���@	�Ye�/��o�H� 5;�
ǿ��ݜ��12%��R���X2,c�����g��s	�<c��د�;�/�@/h�JH��o\4{�^��8����_�� &����N�,���<�-�:b��w�0��2�g�ϭw\�`���Wʵɸ�H�!�8=��>�mH�߇�zB#��E��y?��x(:�w`ǋ�{�W\! �la@p��)ޢ���p��Df0�L��)����*)c���7�Jm�<�(Xq�s�uGȰ�l~��%�q�ȼ�x��Ϥ$�d��?i8�����4��]

;������"�ב�@0�P8=�8��A�ǀ�gx���-�J�M����Y�4�/��}�����Đ�i��024��,"s��W0~�G�P�8����-
�#�,��1�������3`E��_`H$a�2�H��#�T����hl�^��(���eJ���4������)2�& ��q����!���ʻp0
#�%�	����"n��Cj�q���EdA��W�%�!��>�!�����w�έ�3�Zz:TZ�?���ى�o�V�� +�`5�lHZH���,wnPΟD[<u�+.8T�N����MZ@�/���ͫ�ȿ��G����>�@�Ǖ�M�������]z=����!st�@|�U���Ӈ��,�%�T���Z������M���~a�����'�'�J�C"DL��� �pe�H��Y*�G��?��uIuݟLŜ*p���ys�	�q���wF�Ĳ�Z�~�7����	����~]��H;��; ��:l~�z��^H	��|�W1�$0�[�w� ֵ��K�TT�?��+��/�����%~f�J�I��s��$�����OM�W���)$�	`}z��~@{B�Ul��_/ϟ����m	�5�c��G���l�еؚ%>j�DG{�_���e�u��m��Я��3I|bdX�^:�D� ��%>C#����;h$����D���J��`{�a/�Y�/W���� ��d\:�� \�+μ���-xť�4y�$�G����t�O4E�A���z�@�qz��q$>&U�n����lB��Z��}�_��W��������s>@�p��d��:ӝ���'F_���Cg�|��*K2����{*��f������ �K�O�$ yk��t�'BX�`�O��'�D�?$��zd<㑑L	�Vơ������:�{^���Ȑ��C7���~�BJD�~?4�~�����|J��;�=;���X�p!e�)�k�8pt��q�e00���h�1u{ҴH��k�z��	#q���?�,�� �/��ՠ-�jmeg3�D�1�����Y��24>��U�b�u~ 3d�{?�s9^׽���<�����(���/賑'Ĉ��;9�v��ԗ{��`s��34h�U���N�ed��͙>�l`A�8Տ�:��>�-��2��Y]z?qSN��z��IT���o���>��P8@'�|����j���    zbbT����e�tӟ����o�&�_��rA�Dn�D8�����i�>�="b>�w��)�Q�S\/b>���n����-1dyeЀ#ߡ&�4��_��h�=߿�UL�г� K��;y��u}�o>�������T��!̀Vt�rL48�E���������+���,X�����fE��ipD/���.w�7�b	���,�,"�3�W�'5<�`��u舆_J��Ǎ�[��+�Q��={�q&^��/�Oq�Q���}/�q\6Wp�n�`�5�{���@�"����n��>о!�s�3j���?q���5��}�u~���)8����7�}b����m�o��L��U��]�͑�ի��\�����~?��_�u�O�)����?B,����߭�3���:�q]=snt}J�K3AaJ���OAa@��/v��f��Q���jgV�t�{������ ;%~4�O��}~&�������i�������3��gX���{�1���n'\�s��[�3����qT�n}?�Zc\�_���ǒ9o~��\YbK���0*�ڧ@d*.t�-񗠦 �8N���f,����Z��������c��jw��g�m� ��`͋+=E�,"W~_\ot]&��Wl`� U�o��Q�<���sXsӉ`�7:�1���P���`��xj���X�>�V/C�`րڟz���t�8`*����΀��2ž����j�� �������>�+��x%n��?!�}�r��Y���2-
L�?Ȫx�z�($�B�Q]��;������ޤ��	��ƴ�c_���<`���]kU�x�}ƕ1���}���ь�c@��l��3��s��:Hz2ޗ_�|s�g�WA����}�%~?�3�(t�O�K6o��������sߛ�8i8�K�c������"půp �\.��1�;�8ԟ�Ͼ������`�O���Y��S��m��ߟ�w$ #���6�/���ZqG�-	�P��u�y��$�m���I	�'�cHթ���ာ��_2 18�TD,mn���2�}���2�M�ΡHE����{~l,z.=�g�[,����p�<u����f_��RQ����-��`����_5��oւ( E��&�FŦ����\S*"��A�@k� ��W��(�\��a[�VV��_wTL����z�s�|/#�2�{��d�p�9��� �����	�O�������۷�ňk(��Ӡ3�k�k�?�`��*�M�=�.�������P���M}��%����0���ٜѳ�`��8�t���B��׸C��}�am����!�i�i���l�	i2d~��96�x@��ܾ��!���?��Bn�xdo�)��A�A�`��zaoJCD��;F��H%��ʷ?��֯���" ?����vrMs�N*4@{p�ǋZq"�N�x�w3L���_��;	��E��{YҌo���E�ߪ�������jX#��]���Ʊ��j����������#����Mg�=�{� x $����`\y�|���kN"?^�������<�?�?�C�:~}������~�M�������~����?���?��/?������Sm�_~��|��w?�?�?��M��hY=��i��!z�n�WYG�ք;�5h��A���i�E���N��3^p�]�-� ��⤝j&"�Yj�d�b'8���h�)wdU�h{F�g�,�6�����oUe`��4�E�
c��KA��i�D��j����Z��H��IPHň�[4ڬ'ͅ�eG�bu�/�Uu a`8W`}��}�_��� <�C��)uB"V�������:# g���f0ix��r�߇��.�V�
��V��J�������\�4�����o ������$=�װ�����v�KR��a-��J2�~"�-����_��o��������Tٹb�-��Q�u`���O�(���ʫqP'X�Us�hډ/F�bn"U,ܾ�[��˹�?6�p�9?�g��* ��p�q�5�pܢ]Z�_*Wj�M�R&��hY?�1<���:���e��Ѓɐ��o�Z��vL�"�~r�z�p'��NV������9��*Y"	d��/^Bx�W�4s�[l���-�o�}�H��Q�!$�\�H͈	���[�>��X�)�"l��-��2�!lfg��Ce'3c����<@-z��gEM�*�"���)@�3��rY������-t����>�-�t{�?�av��Т-�<.ڼm*��JG�>�72�p���0�e�y�~(=F�_�D�ЅR�����
R��{x���f��)�'�������"BX }�Nc��8�M���KJe���SCr3
F�7��6hԌT�ݦ�� u�4�#���a��)���~�����~eh��%uZY)(�W��'Ub����C��Nǫ�F�hH����o���.���\�� ��T+@������1��A�5a����nA�����D ��|bǮAMW�>1y}|�c�O�`�SƁi�gD���'U��b�
+�b\��EsOĪ�<Y�H~߻n�4��
p�g4����`B��֖Ԍu����EGM����jT��`�	N��ؼJ��K�O���d�]@TC���G�M�/xMj�qNJ���,���E�7�K��M�s�� *G�����b��Te	��cM��W�bQRG�uƟ���K��-���_����_�+K�<��Ug�o}��0\OYͳ�o�kUV�xN�|�k��Z?�܋Oə?�9�����u՚s~�� ۲	K/-���9��i��~�S�X9�׬�e3@z�	R����,�V�r�� u�S��i�'4�e_Z�Yc���W0u�l�ҙ?�ډ����=�R�*.\�vy�� ���h�Jm�ߣԨd����������y\5ʚ�� �t~ }����Q�� ����to��=��A�øP��sR�-����"�m�߀�����Y�-F����	'�2�?�e|uWb�Q�����Ώ+�*cW'�,R�+X���䆄f��F�����:?�Qb�����jS�l�gg��[��%H.4JڒmS����F �ԯ}K�[���U��~@��<�Ī@�Pnŷ�w,3G��)�$y��7^�x�����/�~ �rZ@0'��i�3�˙�q���n<,[e]�X��5��=�2���=�ԡ��F"��V_yuY����0���FY�^[�q�	*鑏��(a��z-\�����}���o�Y ��y�����<u~+����4g�~�:��'�}�6�F��Z���l��X4o9�k̗�3u�qӜ�����fӱ���)�����
�{>?����R'4A����z�(�s?&�N��:��Z,q�,_9�����~i�LPf��N��'�SחWH+V��?�9��,1h�>����AA=$듴�T�lP����d��pm�w�V�6��q�|������y�Й¯�#���N�/�� �l,���l\ϕ�UD��|<&�-F��1N��M���\�8�_�~�U$����c���ݟ�Jߐ��i�챟���*�ۼ�j�榚��6�:C���t�_u7�`���b�sֵ�:�8�{ҹ��O`��1�E~�v����Sf4�*^�[2�m��}�����1 v�̏������D,�(�4�#����W��Kt�:g�v�i3�U�Is��S�&B�n���Qhka3q�,w������>�h�E�>�{���?�>;�3�T?wh����Kj��
~;E�G�q��0��Gbb~�=�h<{"����8�s?�*����h���_;�e�GRs�R�˺'p������ܹ^��� n�z!H��(�\��|�s��
6R���Y����,ux���ʟ"35����X����8�?.�^��lK����tq⽻�yz������/iS��� ����	��cQ��� ;�� I0���(�e���|�U2ۜ~_ꯅ���U���    Zqm.�Ot� _��	,.F���S[���V�B�a���UL0���N��lX�����+?������#a���Nk��7���B8�e��*���ϊUz~_�ثT+��b���Y��c�H`,�_Ol���/[��8��.��8	�y���*�+�����[�����ǹx�/������5�@���'>�P��j��;����,^�jws���Y�~ҡ�ظ��/�rp�$�ɰ�ĕ|�;�Βib�r�� ����.O��6b9��o]v�SY*s��ܤ��dr����7̾ ^bɨ��X��yo�o�q�����}�)�*�����]dz�;4a��ռ$]��5���r����p�X�L��?nÑOԇ�����H�C�H��"$aR��?���h�S�`*��(~��b:�_�-q.�??��zR9>���A�1|죘��R�֧"'V���a���<g��}6܈�B�G~�����w�ŢEb�?�w0�o�n�:b��	_�۞l&)��4����ty�˪�@���2��c�A�pߟz��*U�{0��U�o4`��-�Ov�(,�e� �B��M�*?�̾/�X c�|��H�f}X �g����9�}6�u�I&�b�����qp�hV�Y�����m����ce[:�a߬��nX� 	�}k�����߇}S�2-��?�j{��4̬jX`����*"?�m9\�ߘ�/B��M�xY�l�81z�~�o��a���(P�GV��w��/�J��V�#U�C�H�֪��WZ9��q����J��֭l��^ۅ��r�M�~��,�m�Czۭ>�Y_ ������>D�_�}��喪�����o�×?��W��/�����/��_6�;��������G�w�m��d�#��D&�ȑ��`=|K���P�,���)!��sC�o��v�I4s�1�V��4�@����%�K��Ǒ_S�D��H����l���&kk��B�,9	��V��9V���]���*R��s��@B�@��ųt��TY���-�-I��B�������brc��o���;\��I�z�w�O"����ET��@Eg�)V������S����'��z(�k	%Ư�4Kg'������*��)��d�9?5P1������KK�P�o� O-pT1)�IO��)�"�i\��%:��d���V�De����I
��Y5���%V�L^L�<d�@3���YbJ��	���-$��F:��$�6�)��U�j �PV-�o.�bH���Rީ?f@n0L�<)0K�#;`���c���D�f��L�����J����m+p33TBd֚�g�;o��6 �� C
���t~��3�J��������O�H���8;�'���(�㔩I�)�*32�+�p��s���p|�Y�w2���5����b�����8Y ���dG���<��q�E��8�e���u!�s�$��
(A�lֹ�o]�&E7-���IV��ؕ�Mo������W)�Լ��$��P�󼚏�@T˚��e|^W�¬V`�,�a�Z �/%9���p���������cR|��q�j�UɬX.:�%��C�r%���Q�w�*��tȦ"�ghx�����NV&�
p� ����踺#5���G�1�_�q��CV����)��%R@*`��T�
���wR��	� �w��y�$����|���4�iv
JL��Y�6~�+AV9�,��"�7��;�i�w~?$`4z-��&�@�@��>�+[X��Z9�u�� \`/�IK��O��H�+����M��*��SX2�$��7�J��	���(��f\k�x�u6V ��r3s�<�p�$��l�
Ő�t��!�f�p�;o�B�<�I�����~���pؒ����O�k�j�I�j�rY�	�T>z���Q�։w���Y�7A�t�M��-�h�#_J	�^�L��\��%�;f`����������ۅ��r��{�>����<?�<��{��"���Oع��s,"ߘ�v����)+t�'({�c���Ӓbڢ�pC������fU����XyL� 8�o��;�|�!�t~O���_v�R�F�Z/I��>�U��^���)q	���ĂX����5
����B{4s�}eO>@�iF�m[�g'�6��|S	#��V���Ƌ~���O��mitR�lݒTe�/�t����M#�������b ����b���+_==IC����a���E���� ��dg��},&�{���sI�d|�`��L█/���/6��[1S;�tD�ҵu�`H1T��q��� '� ����Ͽ�F��{
���}��ف�ゔ'�"��i��4���V�T�?$8���(��"����T�o��2T
�iyL+�����V`uh� ��ژWǟ��/ݰ�x�?�h;���OiIf�%�Ό
m��5��V��}�8v��[�vk�P`u�I��2�y�߰4�f&���G���&�I�=��] p�ß�D�q��K�)��;��pD��-.T|����UB�p�0�e�K�i�4M���?��#A�TG��|C\�����q3m���p	.��yr�0�e����g��wZ����.�&��,�,�  ���p�	�%О��kR��d.�X=�I�!��!A��Gg�V����1NXLnЗ>��yy��I�a,2�R�&q:�1���M�ScB�%Z��`���)@S��UBf�9��+o&&G~��d�o��}�D���4�ɟ���K��	��`�|I�v	�������Y� S	]���:�B��2�y+�ą-=���rN��8Ok �v�@7iL��́���/���T���c��A��W	x1|�����`�D���zy�3� ���$Mj����V@eykT�,�2�$	)�(t��[j���P�[�R�����eZ���Ok�j�6�՝A���++�]�i�  �����緹�9�o�M��4G�y>�v�6���)�#���� >ڠ�.���l$��Y\&Х���%�:� #L���RA�OwL��K�#%��m�z����g��4Yv�Q�8�Ŀmc?���O۞��S�,k$B��VgS�mn`k��z}��,�IO���H�/�v��x��}���|.����j[����V�D������]��aS�֪}���be���b�%IzD.�>��@��ŷ������Ж5"�:��#e���n>y����Mk4�䂓2�R���F�Bw~Xbb~AB�mD׮��F�����.+�7+���"9.�}��6�����,?w�Y��[kl`�k��q��b��&�0vk� !��:�V��8��	��CƱq��=�v��f�r0�U~
�V�ۋ~�&��Rl�
�1��M͊ڃ�-��]6N�%sR���p�S�n�h�4ͬ,�?������h<q������Q�+�kV斋����
�Y�����>)?�� �����#�!����>�r��~�����P��L������4��8#v�M�����Id�Ɉs@^�K�3����Fh���H{�y2o��O�C[9�׃�%:��l��4���)�����w��MÓ���[	b��ߖ�]�Q�ғ�r��0�ښ:3e�����Ë����.�?���$Y_����f-��}u�o�m���i$��H	u�����]�F�o�#u)j�'�C?�x��s�<'��L�Uk���d|"k������J�����`D��7�oS�Z9�'�DBN@34�L�}��L�/3@f���M�?�m�$b����$���%�<�N�����.��ะ��8Ε%������,�@��Ϣw�ș�a�,+�I����\0�N�q��!��08�������'��)���{���o�%9?��8Q��?��!RNXl�����K��X^C��2:���I|\m����0A,q�����kVyf���ٕ�|K��{��@�<��r ����Q�,0�c��S2}�jd�Xzn�b�7I����6J]k���;K/Wܲ.�۩E��*��Y�Y�� ]S    �P?W��L/��-�9��)p���������O��ɻ����?��˗?|��ҿ~�v�_~���#X�s�h�܌�賷 ��X���cy*3o=�N�9��@�f^c�����=�CZ�2�ghP@�߄%g�����_��fDu�����Li��q�'bʏ	�Z�*D�B`5a��E�,�^�8�QjΟ�n�ΐ9�_�������<�߸"�(�:�,��H�~AO �u�����ڕQ�Wb��ɋah������|�W�;�������x��h���W��.�lkɰWsQ�M�[�#����f>x;��EyB��� u��R-|FH[�]�t����e\il3�歋b�I_��:1�=h��B����8B���P @�|<�@��/�b,��هFPBx�˜@NN����-�W\����x�<�B��n�ҿ�&6����������o޺G*>��SQ~z�קZ;h���P��l�?VBUĀq������g��V*A�y^���A�4�L�c�v$��Rz@��z���Z$�C`=�q$�������?L��ү��Σ���s�Y�+��a���ҳ~����ч�>ְ�όgQ�O]2��B�|>ePT�
�=��v�g����BK���O]�;W�7��1ņ��7��g9(YF/�S8�Q��|Bu -�Vg��Q�W��n��:+�nt���lL�uO����n�x���;��X�몚��S��������r;r��S�E���y���(g��m(k]�D��RK���W��g�-�n�i���uKE��:�ޒ��kb>�i����Ahx��o_���_��/�g �;���?�� ���Ԭ��!��%�QV(�Z�6.�I|v�n�\.�ԉI_u;���G��E��L��L �c��L�^`Z�Y(�rg�ԓ�R�+}hЖ����hy�:����a<L�EX�C��Qz�W%�EV/�b�,���o�ίJU�=�^x�8���3�qv�`
�i��N�u�᚞���c���l�|�x��y;� �,�|���U����>�c��dT���Li�y��2:�Ĕ����-�X����G���]&�H�5\��Gn�C<�udvpX�Dܛ�����L�,���zN����4���������=u|�e7��R�#��R�c�������jF#;�wO�M��̶��۟7A�Cx��,�~J�[�S�E�3ˠ>`�[����˕�(f��ѭ���w��Xj����f��a�ux B*�{��,o�~�s`ILB3�T��O��}������.���ō�K�g<��ۼ��cN{+�Vǈ	8�7���K��]�<���~�	eisu�d�n�E��n�cq_�������?-YM@W6�6�l�0�v]!�5�~�Q����d�{�N߆���H&9��&o$v����9�������,��n]@$��5g*>�6ə��k0|xj>c��Do�9����f*�	R2��a�'�P%����m��:N{|R2ס�0��O��4:+��f��~�Ph!�H�$ܶ�J���>A�g����2�;�e�����������Ӹl�3�����?�ʓ�����&�$�;�4��4l6�̒�J&�_����3=q���2���ǆ-߿ G����P�i�?0R,V���`�#d��y]���]_�6��ӧ'�K-�Y4| 褕e�4Ӎt����@�ǍM�%�D�Ƿ}�]1v���%�f9�}����?Ohl�&��p�@� ���7>�%@��y�̓�P�1�bħ�C�{ ߩ��iJ%4�g8��*��}�e�ǘ��\�|��/�sf�n.��g��9�W����:�>�V�V��.�����;��-�~���������s�	iMjz��'�A귥���l��FKg�\��m6^]5&�\�������[�]��Wo�y~��.P-�Ïo��������H��9�j\���HcǊ���������f��u��6��ɇ vfYZ&�λ���?e_y�������^�)�����]'��_�i��]<�T-8��/������O2Np7�`���<Cm[�^�u�5|E`,5�dܜ}v~��	��3�T%���O8��G���@��D��w8���˧0$�H���V���Rqz��Km0��U�<p��$�o8H'�p*���g���j��ڽv�O���a�h��}ٍK������G�/":�C���_f�z��|z�	�_'p�k�O��";-�c(~y�]ޒ��t�x�'�������a�c�E��9��A�[�GО��\�"|�wO������A�1���Xp�F'�!vYo�w��'����PR��?�N��p�u*R��z~V��i�/Jv�oJ��� �Ͷ%����=|�P���lv���%�)"���$�Y��tG�q� `��o��ʇ����, 
		��A["�!�SNE�&������U�����~���?�ӗ?��/?����c������3����9o*\��F����u��||67���Œ?\�O��
7M���,ZN�dJ�o��Y
TLU�8��O�r��=I9��.���R�f�G��0H�`�?TA�N��4'g��o��Ȋ�gQ�Co�V����{��B~LU��71��4�'�uU匝��=�(Z&{s��&�gB~��W��x�d�.�y'��ق���K��DÊpk�D�����s�R���N�3�����Y:[�i��a�u	��Z���?�兓��9�����qK�/;�����Y��gL*w�x&��>�q�-O��DK^Ӥ,��	YO��C`�N_���A����M(:������%��g�8ّ1~b��4��{�pZh�y�,�H���h+��1qR����EAJ�ܷ	Bg�W�i�U�������y�EV[nY�_���<+�������#�&�rH{�Go�_���Ҷ|��h-ax�*"�͸6��4���[��K���Yݽ�mγ'2�Dq�a#c�ޞg��-� 
	�9W���t8)7�*+x�Ԉ����;5)�t,,�fΝzw$v�:�g��1���'֩�x��:���rrP�88�g�$��u}*��YK{��a���C���	/ʵ���c����n��/ʱc�O;w�ֵ������%�Z8| ��(�L{�}R���ǹ�ɀ>�Ci����d�գ�bM.����6�2C[����A0K���N>�Su�?ࠔԯ7�r��;Kk��x|c	��_�T�thZ���Z.�]O�_lk������V��4��Z����妞� z�	[�N�ܮ�A��|b����`��0�z�����x�����Z�''X����$�R�Y���-Ο����@���{�R!��Ota��$���,1l����U��[�R�ALu�UX���ҿf��}@�֒�.���Sm������K�|0r��%<�qYX�o�6A�]�WV�^#Y!�$�&�~�1���R�}H��łρ�f:������[%���_]b��_����	�:*f-�u)u��6]�ɫ�f�3�;B;��61��	_	�ٙ�/k�I��K�52?܊-%�̸m��e!���oH׿3ڦ28�kY�oEԡ��zGq�c:>�G�Y�g���N�P<�P�8ۀ��h�9�$N��_gd�+x6����t+[9�0
0��_��i�X5w��&��,����XV���l�gk�+ƭ�)�1�C�I���8��3����MPօ��5�O2vLˍ��KI;����D�3Th�*��!��!��g"Z�͹ɞ��1�h�?�>r��=�;)I�e痕O@���57T',��y�h41.��i/v�4�1��W�/+~�V�Y��a�6W|���Y�Qr'��wj-f��̚���3�]Y_��K��?�s����5If�"+�,�&�ȓ>�O=Q�R�H��C��̷)�4Q����fMTV�H@�:Nq��|N�����6O�막�����+��(��8_��.q~�=ڪ����w�6��������=B�����"�c�R����:Π{,d\X��*� �C��ߐ�4    ��^R���U�̨
���hbj�2�&��f�x5n3�#=M"�D��lAu��h���㏑��éw#���i��y�j��A��b+[�GOl�L��Ii�v{��@W���d�y�^�o��k���-ߢ��4���%p��H��)$�����E��R.���/�i�_Ǘ00�����d�_�ϴkH}��?c�큳��~:?�k��M�䭢?�t�|�[E�a%k"x��J��>b3��t��b+�p�.ۺ��&?���?>�w'�,�xd�V�b��|�s��$�4��?���o���~��~?����(8���O����|�=SLӠ���A�O��w�:�
���_���m��*nFD\O�g_`��eGFk)���y�%(�Nv�����Ѝ���>->�*g�ۀ���l���J^��� �u�~�[*W�jD\�h�
 ���o�w�����4�,��o�ʣ���V�LM��MTAi5�Q��z�@A���v���ti>��R01V���@��{֗�! u'��#�B�e�8�~��b/�n���T�Ł�i���=9؄�ַIQ>qT�G=�(��B5,��1��W���8I��fXR&�M�0(a�Q��xi�`��k�����#y��>��M&UU��wf8$-��&lOfqT ���"P����r&*#$��hS�ӟO���4�p�i�T�O��U�Z+	�b��6��z?���S*0d��bgREl��ka�7@�C���ғD$q�PYQb��с(6��tȹ��)2�m��"U�̋Ǎ�8�'��S�ڻ���[��`���mn�#֞�u�����K0?mx8���Q�hA�O/�ډ�}���������d�<�1U���1?/�$�+��1����?U�����>[Ly6�9����&������37k���7��+s�������U�����K����[�!:f��'P{�t�?=�
p�{4?�Ԝƿ�q��r{�NM~���h�?��Т�M�k1d4�B-j]��|L�3��L�ڤ�f G�)N���}�)g 6�0�}�����I-1?�߬q���a~2��+����u�VS�|;���c�{jE+C��j�pC���J�:^�?���&���$�N�p�BO���n���X���� ����8�VY���1��u���o�(<�'�=������~�8y��`KL�����me�p�ڕ��T��"f���:��%N_h��ٌ��b����n�S,O ��hJg<y��k+�ڙ2��X���#�?�h.1%������K���� T���Y���)��m�P���KR�F�?0fhMYߥ����W����+K��|��Ss��t�N"��P!��B��-�x֗���k�+2�^���t��H2��K�H�3�ѯ/���Q2V��A�t�������;d/�@v�pn-�'o�L1��RL~�����<P��{�l͵���O�����L��K��������������#���R=�ko�'M�	C�rYM]D�$b�s	��^�]b������Դulª�,���h2�Y���^��Ӕ� �|�<2�؋�3\[��10Xzj�vb�8G}�З~U]?�Y:���Jb�)��T&}�m��X�?v>f�3�f�S#[�0��LI���虮l�2����IB\��E�؜�4S�g5=_���OG��tfꫩ��`����c�*,�.i�`"ԴfJ|�c&�= S^���$��e�v�-R��*~Z�*��Ns���̍oe-���4%2 �&�.bJ|;���IUyvs8�Ӝ	[��Yw*����en����h}
O������c*d��.���c�qh��E�l�je�6p?����b�:tE�8Y'�*�L�P���P巒�>��9qf_Xs�\O�ġ~��L��d�X75vc&{��X��0�z�����Rz�: �F����=�S�7�b'+�H�N�@�n�P���3ƭi���.AL��[[�>�nŔeEH�T�ij�.X�)sj�WL���Y,����q���E>1!��f�-hK��b
l=�T��%����|2���
_ӻ���ߦa���#���H��"�9㘙����ܑ����J�NL�ϐ�Y��x;��3S!x���HA�͑f���ɀ5ٲ?�e���AB,*������j����bd�
M�������-��=}��}�cu" �A]�����Ǻ�e�p�S�+��3��m[���W>;�[��.�f�o�Ĳ6����R�xL����U�&i�`�����2�H%�_��ۅ.���cgߵ�'O���=RQS߃�u~O{1�1CX�1���bQ��(���pV�BҨ�3
7��W�92UU�����A��YLیs�j���
�2�٨��4�_�3��"� ]_|��2�K')�?��O�q���߳�������.����3����J�>P'`���o�K�@` �z��r���ת��an�O���A,;;�K5ꯪ���C짍��ڠr��ff��!���}z�7�������Y=	I<b��P��T[a!C�����O*ŚfFY�Z_O`�8�{�e�Ϡٙ��\hp:��47��ABbb���A�`���㛋e��1r���`��)FC�}�G|BP3VTj�1bƀ���p����ǐy������{�-]�M/� ��PM�!�z��b����ٳ�������P���<�U�/(ծ�~���3Q����s��A�*��ץx�b0
:���	�Ѯ�������֫�(h�� /�&؁'�3	����[�����<*̌�
��#��d	�"�,�O�?��|dU�s~{
8����[)�	�(f�	�&v����i��_qb'
G�(�Vi��Z&�~��.�O���A P�Ѿo2�a7�h����i�'��*��i�*�mhvȎ#Y[�����ocVLuI�}~�hQWB�yN&3C�;&Q
"�h�����.���q1��@�3@P��<����`Nh�.,-0��b���������[5��Fk�AB�j>�\���S$j�z>���us��Pp\s5�������jLL4�)�>v��t�������h4�mH��?�ט�0��ǲ�w9՜N�����[�
s �i �zK=y�/���;���U�,�XF��^����1���CsY��a@n���}�ɟ�N.��V���gT�dsc��"�[UN����;{�>0 �4��;���!�l�x��q���פxg����VM�	g�m8��5���}�jYg.�{f ��d�������?�� ���g���no8�'u������sO��>��mD��z�Y��:R��A�3�,>Ք QYl��S�.�BORG=8��l�cz�,�?��E�����|����b��=��eiP���4z>��q>Y01J�<�>�f�Zaۉ;����h����PN5����O{�O���)����a����>1�<C�wI%��ڙ����'�\�WA���g�<� ���2�pw,bp�3�6�U�2�~�����������X/��������Yߧ������9���>��� �4^���
ڦ?��Yw2�V�������v??�ϲ�R�Y�!��>ֹ�l��C`��r��><v��~8!���%�] �L��'/9[ʵ�P��]���<;	���Sa1�f���ٿ��$/+a�n 2Ҡ���Y�
��o���#���F��ŮB��֥Z�Mx�b�
~����RxYq
�ǐ�qa��[>^��2�ofc��fF<+� �Z#�ͪ�/b캙Y��-y���+X9,�<a�j&���ɏG��`w�6`����SZ-m���HL,��#4RX��x�z|n���X��n��1 &�}|��G53:���.����=Y����.�/�A�Z���V*�q/�������gZ�hv`��!k戙�N������9EƝ�9�r�oXv�,k�t��0
��Ḝ"=g+��'�&�ГŸd߆]2~Y��4p�\_(6Ӂ�nT�O��"D~.JD�Y���|�v�e���u�����@�%��D��~�N`���MS.����!T>���؋��?�u�{�%    Y�
	S����c�4���?��W~�����>���?�	������?���/?��e���Zٍ�� J�{t�8iB'�솆�}�|������m-^���S�E�T�;�q4',t���.b��3m�gs�z��a�n���؃��+��j�1�Cn��V'�f03s��HY�uY�+j>H�o:�9}�A�� ݍ� �ֲ��-�j�C��v���oú�=�c�:y#8����޵�r~b�D�������� ͥ����{�̇�j���]�Ӳ���n�U��~�醵g�}���p�*t}�b��5�=�� zb����`��A.}2]��+m���w�-˖�Frk�W�4��K �4���R�2�F��b�(Qc�{�#"�瞺��5\LOU�9'	Dx�ܷܯr���0��l_4����8�w�5B��.7�#�<'\/�
�����ZX34yX����s�ϧ�S�E��m^Љ���<��-�)\�XX7���OQ����`i��ޢ\іN�-c���u{�lZ���<h!>J�m��v*_�:*0�����m�o�yPCk��-�k򛖢�6[N�A����[L\�[�Y�\���a}A�� &�z��P:6�D?�be��pՋ�lM��ÕbN�O?bI@�'�~+'�*1���E�F��%z��¬�����VpU��q�yb3���P�s�KV�Z6�h���k��y6-�SE�E@��_9;��ꫵi��E��澎��q�I��79��lxC�k}��#ևɇ"<r"���)^�e\�@��y"��3��H%_�����ᲶX^�0�S�_�ɣe'�L �G�԰\��	@>ݚT^��+z���L6k�Ȟ��|��Ŧ5�N���k��|�*T��A:�%��Ώ�m���{Q�^%!��Z�<�&����ȁ��Y�I��:|%z�L�ɷ; �	zg�(�K:ﶩx�-�Cf���?���$z��EH�Ϳ�8�Il���i�^����l���nо��ۊ��Xf^��\ѧ�օ������D8s&��A�,3��?�.8MKh?�/�r��`����Bw���-��݈8��i��\6@��j��pL>۰9EInʯ4��Hh<9��4�͵>�d�xn�z�/�dfZKx��8y]�F���L���{G�����]�qa�|$�r"�9:�ʴ�R&â��'�����ƈ�/\�O�T��������\��G����D�.���%W�!��j�^��hH$��3��u�AfB��I�XV��6ёWV>��1��<�9r�1w�}*,��v�f�	�e��"�<�Nw�$����}���d{@ ��p�/UN����^����~���>�j��䶦��:Ĺ SV�v�x���J�I���'��'M� '�E�C�#�Z�7��T��<�<U��`�5�i���zk'����ӥ1Z�XkUGZ�I� o�l^��!/��6^Q�?y&�)?)��f��~5$��Z�pՕ�M������D &ϟS�-[�nD X�!��%;��'��Ev��&Q�p<���?�:�ôNlַ�_ߛ��C_��?�z
֤����}?���3G��qRM��)J>�l;�L��u%�������x�}����N��q4��Z!���
| ��ք� �"5/��������M`��$�����F6V�c��5�e��~�@�� ��Z�6Yѫ'���c@�a�����!v��5�ldB�A���^��_���o��jՅ|�tl-��.� �\ ���Om&�,I�-KK���/5���Z��K��ʪ?-G�w@�u��J#�/i�^*����m��,��d4���:Y�;"S�qwz�����f{i2x�u~�ܣUωǒ^I�����Xv�!�N�E�L=L�{>>N�?���	���G녲����a�F�����=@�~_�~2���K+ ���|?41��i�g3>�M.-�/eBѪs"m�f���w�&�M������~��I��^)����Ĭ���X��Rdr}?�o��m�dw���ټeO��L�.��-^)��+e�P����P?M�ÿ�t"H�bN6� U[v�s���2e�%�1��f�����c!*"��&R�NJ'�,�o�~�ׇUמj�\G��ׄ���1y�4���[��bM���I	�p���=#Ā���]�?�j�nW����dǩ���,�,�F:����M���1�y�*ಟ�1���	�"�[�����U�˚d��1�$�@�#�~�+Y�'��aw#<_ק��w�H�o�-29<)�4{x[֐�]�,�o6�t`���1�>�2pe|
 :Qm��i�%��H�S.��-|�f��MV(φ'�\TB.��X�*��{�o�CvvM�.Kf�D�jLc������E�{�w2'[ugD�t�6��k
�������O��H6��z�6�����/���l^��lٿ�9`u#�0�d	�?Suf߰(S2Qɒ�jՑ�������-��c�_]�wq>������(8�_�j�~���jK��e��~�R$��
�M��r�P��_߳별	��.���|Z|3e��-�l�~�p��{������m=���t���9) _��i�6��d���
����^+ �^�&^����Fp�͍+{��l���a=+�+��������	��<{�aD�!|�\=s��5�(Iw�8"6��M��8��$���ca�|�G����/��:�Y��~����鬿����������!�����?|�۟����~���%��^2�b]ݛ����Y�+�r=���L&�O6H_�4AN}�v��R`�J0�~%D`�]�*�R�@�̂��`�7y�k���JW��3Ƨ#�� ��(%*E�{A�#���qcfH�L2��	��6�a���̥�ϥ���K�x��6�T<�r���H)Y�4�MNf��ϯ?r��>W��<�6�5lY3�q�ɘ4��󏸏�|J�k}��U솕5�
ܔ�6ų�~S��ܗh���aci ���o>��h7"�X��\j7	���`3�v�Ni��+ �aG6����n�����	��S���>7�&|#<��K'�������B�pw�ӵ�p�������JA� k#Fk��O���������uR�h��3.@Ҿ����@).�,-��4�ds�����~���_������e �5�X���2�I=1l`T/����$���D���ѐu>n����~O��$�ߩ��d��IӘI\/.��i��OI�ؓ��S&��)�^�/F�a���&Pm��Ľ��o�Z�m�e�ӹ+W�+y��"+��Gq��؊��B���a� ���1���Bb�����7v�S�{�K{J4�29ַ�ʣ#�E��#�)�rl9H}>	��7U>�Q+����a^T�x�t�0����uK� ���.��8�by��B�-��a�������瀈�H��1*�;o���ícWIC�{_>w���
�;�b�u�3m(�������O@�O�a'�%F�:���z��"#�;?]�y6+
��`C�H/��eJ>]�K���O�Vᥐ��4p���)^a���q!("g��?�Oq��I�+����a��8�@��'��^��3YH���L���
?����x'�i�Ҳ�� ˳Ii�tƭ�7��/���&�<%����}qG�?�W���&c��$���_t�m�~`U19�n�e~A'���I�M;�T)8 �Eًe�	`k���5�9�ԩ~�� ���xp��5|����������6�#����U����-x��s�Y�B��²o3F6�GZ�|"��{[bW��yj����������5�u��odg*�@g���m!��(G�9�/~���s��{lp7�oES���X-����d<N
�ɴ뉴�9�Be!�MFiEO�	z��~�CM�[������W��*�jEQ��k�r�I�jQ���	�EHHc�W�16S 쀦nNJ����0T�~���n1l�d}>��X����qU-z��^NB"{��É�Eג��}`��z��6���l���. a����N�Z�$9��<�s<N:2-�	%    2"�"��[�TZ$BI����I���o�9Ea>0^cfxI2��k�0�E����r}3�����x�EC��v*<5VT#@ni�z������4 Im�w+z��:�X���&��=b~��!�i9EdE�'b�E�c˝BF8�N�)��
G��3A>�U���\�Ê"���2���m���o;�g�y8;Q�#�J�V��
Xԩ��e8/��=
-�!6;QR�Ch�PR�`�����y��A�1
_4MU��U���?X����r`�f�=�����m�4e-f�w�	��ezp5��9[�<T��N�� ����˝�C�=�;���B�E�im�7���W�|�y�*����IvY������S��9}���B����JA4_�fB�y��p�[dk�#ۗ��1+�G�q��H,��o����,�x!�[\D0���b~(#3��p�c���
�������������[��q��E}��r�@��Mk��8�u���+�h����6����})��'��M�ϟ�$m�z�������������J^=����\?����ae� �Ήiv	���2�M��l+��Ð��S=��8\9Lբ�'#��vS�����3�i�8P���3��qZM�)�G�K�w��E�|G:D��+��Ӝ�Y�_�@2Ց����?�B��?��w}��¿j���Yp����1���J�S�R(��2y��:����Yu����f�\��m/��ې� ��̘�f)Y6������&�,"A��8�R�*L�I�?�����<�ȟ��ߩg&�݂DC)@I����\]]��I�_���f��Q�D�j��~|V�JI�D:a�N��ix�F��=�Nv�iRVHV6O��i�i��7��p����<�x��:�d-�,ף� �\|]_��}�F����~��ȁ�߿Fz9�&H��6���cK����Mix
	_T]�F�+{��}���Jݏqi�/9{�N
'��w(s�6ڲ�f�|)t�˹�1m&}ݬD*�3]= |�����\�[13cϏ���aC|�
����w�jR��6Zwј9��m� �ߌKA0Uc���b��? �}E�+Vg�E��,�^�����r�aI;>/Y�X)��&ױ_W�N���I}���r��z�PW�	.˺RyJ����V<�h���.�<`_� �.�����
�O��P7A�)3['�]��F}�]�ፀpǕ7��o�u�0V7����a�pDu�v��QK��4�Փ�yy8iieئ�Y����b�2����������`���u��<,3+�n��ܗ�?�p9ß�&lzl�Lk:i��tҤ�N<$E{��վ�r��%1��j�k)����F�&D�>�3���T65�����Wbn�� �58�n����|9nac��U%ON﯌掌H=	�|��̾p�*w���E_�^���!�f��ܤ޿?~�VO���}(����/6��Dۃx~��B1+Q��2����=��L1�d�z��(`E�<��E0[�]<�����$ x�r��[F�EX[EK�3��C�y�F�R��^� 9�̹Eȃ��p.�]�hN�0WS�O�fKE��],��u�Ů��|YΦ���9y��O�w�e����[�Ff�Ul9�+������Q��gS[��Ȋ���9���A�R(3W=ׄ��ǎ� @�\ 3��Y���&/���U��:�gtg�������p�¬�S�L"���CE�[�XT��3˙¢��d��~9��	#\����g,ب�`��G�!zA�����,����`�j�q�d*�EU�"l�-��>���W�����M�7�J禣�9�!9�p���QQ�O�^f3��?M&6甜F������N�4������6ZSp������T٠s�׭T;į�x�o��촂6;�ѹ�n#&W	Jx-��GXA�U�������:�͊�4�͔�w�Ϛ��9���T��F�^�V���ݪ�8h�{�	���*�0�eb_ڈDմ��ٮ��:m�W�处��zǧ��X�Rh��t.��KTC߉�a-k+ޕ!U��4'�s�l�D�}0�|�ط�;�@8����n\`m��h�R5ڃ��e|��-���Afk�jp.�!��ʆ�Y��]��&�K�(����iR>�p���HL�f��p\t��w<vz�.����S��U������:�k��!5�΃�|�R���u}���-�qk��!�h��#]��?��֨t��ܻ'_k6���Ka��=�K�J��ki���9��	k t������F�P,g�F�v2<���76��8cykU����M�1�U��RS�F�������'�lxWE�4U#4*�V�F��ᝤ]�{}���c_���J|�_ 7p���~���u׎���T)>��$6ь�Ց���������(���۪�+s!�[��/�g2z�͆�lu>g��W�	;?�w�X���9]9�=6��i���F��p�؛��	�1�C���[l�N�ߒ����ߗAO��'^YD�Q���'L7����_���ذ[�%��T �Vx��p���ڋ蠿M����&̙��u�T�!D�S`r�����ñ�I�r<��1�տ����*����:nk�$��V�����el����i����A��e��u|V��V����.�x�2j��|�������O���*�l��d�~g���k��ZL�3��0!-ۿRo�\�h�m�v}�����|�J}��Z�h��-�N�~ԴivO��]`��h��ȏ�ŤW��_U���ٶZ�{6���{�߸��G��O(p���wS�Nm��[��j�C+h���*x�9����p��q<i��ݶ���ʂ�\'��ڠ�-�^p�E��X����ބC)������_8��I5U��5�~�u� !(#�ʏ�P���jS�S�S���  �!:Q�ƽx&�m��� ����h�x��/�`���D-�����Mko�����/W��s�"��~������9�����[8�ƹ������)��P��x�������ָ�Z ^����\��Ԥ�j5C��(uc�ƌa5QP�r�y�������PÆI�����}�	��+��\ż��Z��e9���3g�ȼ��a�x�����Hl�`�T>�D��*���HFn����b���q���}PWF\���ćk���� ���G;4���Y�7��Mj�0ױ�_ؽ�%��v�&��`~w��R0m?�����g���JW�Auǎ9�Ug#��0Q�7��@#��.-��6��� 
d9Q�o|���^�Ÿ�8�bD��9�&\��	wMZ���3T�i������p,?�S9K$�g����@�?���oG���U8��!a��<�����I���ٽ:F��r���s����5"��?���Q���ZA���`j��P����"�,\�o8��5?ڕB�#=B�h��'�-���w��<d��>Djk��7�Ț%�����~��E����\�O��[�8R�J2��3%K�� ��p�mǰa���������4=5>>�D�E�_/�|D�<���bOS&۷\Gd�C�T�o���<��9��:����~��|!���D��?��5����!{��Q�B��ؽ,?�mW�7�X���?	e'�8����1t�P
��!�ء���x�V��s�������o���?_�f�#6�V�!��u��盃����;D��˿�T������jv2���M�a�=_)?R|�?nu�9,�:8v�?��	�����3g��JK�q^���-�C�s��� gĭ��-D+�=��9�8�����6&���3�qh���>\`��²5E�P|V?}$��J�1R��u�vXR?����������Iz��kUaWة���#�9��������X������?���s��f�������o�1�lZ�U"f�o/�N��V�?��� C�B��u̚Jc}�'�=�Y
B�8���k�Xk�O3�-�DB�dv!��6�SX_l8���T�9�s�`@��=G���W����    ���_d�"�Q�0�Rd�]b�%d����R�>ln�u���Gp ����!"�����t��|p��{�>� �y�>�4N�3)�h���yI�:����~�͟v׮#@�8b=Nil~&�5D�����0���[Rɬ>�y7��57�ݟ�2��%�B��X�Q ��[���E0W��?�����n�))��C�oH{p�#����uD�fL{��ٍC�0���A�!.Ֆ6^��}�g��B���f��C@���	�i��g�$ƴY�sg!����Ir�=���]�J�CR�	��w6؅x$]${Q�s8x���_eJ'������b�^U=_�W[g��1�B����uv^�tlAHD8G��sA��F��W���Beo���G@�E���}N������v^3�I��	.��B�S\�;�ea/�5���x�-�w=����d'2��U7oă�X�.��AC`f��U�X~8��zoA9�0��@�)�]K�p�eF)AO�ذ�ZKd�(��l���w�X��/�����-�� h��6@�q�%8`�ۥ65�o^U����`�  �bp ds}��:K�uK��s�BT�ă�����Vۋ�H]V£�M0O�@h�� GC�=�����Y����ےa'��Q��1'B��*M|+�ĭdM������\�j5����F��X��5tk۽��V�
��� ���DfcD3���O������6ؾ>Oj��(�4Ey#v���C#wٍa%d8N˙�����k����00��@����3�'%l�8Ǽ�~��ˈ��:�~@2�;GjR'-'�:�S����������]���e���C>?.D�@s��>p���~q�ø2���,�'@v�'�=�k�&b����k
�%\��wb�A�� ��#���౥�9�$m�r~�U�6�<�s�Y�U�,�N�R/a�����Ū}C�DU�������8
њ$����;���?r�^�㊸.��0�M+э
k�đBFK��h�{��I� k��T�:���rP�]R�žĊ�~nT�$� sa�6���I�.��/>�P]w.�qՐ(Hx�����8��g񗥾��w�����`��E������g�����i�oN����/�s#�q��@�����J?��w/���}(�1a�u)��x!��%�\����s�Uނd�'�ol���t��"��'֔���o,Ý��:�~��h��>���ƕ�:|ˉ-ۥEt������V�fD��jL�l%R7e"��H7㞕@#'�������"$:T|�vW�|5��%���qy�������uꅒ�ʞ���s��K@T[�"\�$��%��@|y����_"��!)�7�p��X����狓�B�zN#�D�s��P�+��Ǽ~Ei�S!.�
��4>{����m�"�|��`����}��r�gGeJ�ޏ%�a	�v����Z�WT.O㞖��~1H�r�,Z���R�w1"��b�϶��%U�N-��w��`� iE�:n�t�����$�v��i�|z>޸��O���ο�TT)cr���t� U�u���B��߿�	�z��l���-��:3<���?CT�y����alq��ȍ�뉹X�`��[aR��)O�����������^��k.�3�I��J��2K,8��٩�Ҷғ��r�g��|�~g�gr���zF�y&A�K��G�C������Dvn������H�	�,��{Rx�y����$\c�p��"@� D	.���|�L�t�C��a�J�5J��.�n�!��d[��եʨ�@��R�"����!b1�Dv��/\a��`Ӎ/�e�{**W��!ISݟ[�L����ы��
;�F�&��3�u�/�>"��\���7�|�g��K
�l��oJ/%
��@�p�vxr]]�������=yW�E֌f-O��p������_K���3�Z�� ������ B�
�[p�J�S8��љ<�����u��v���O���f��E��K.:f���/U*�E��~ R ���̜t�f�-���)�t��&���d�L��磁8�q����9��u�c �f�vf�z�b���c���0M���`/��G�$�Y|\��ˠ{c�V�ߵu���of�fS�r��$1�"��-�I=�6Y.՝�����s�ىU��X���놵X��_|�_�ﱔ�o����緿q��������߾��6D£�������M=?�]K��I7�O�"�]iqx�{tw���H�D�'���/*�ʨ�1e�����BGb�>�cڻ�Gv=�E �Ԡ���=Ӎ�r���h_f��R��H~���g$ ku�$��1S�6}>N�Q*� ���}���[U6%��,��Z|���f1F��=?lL�֢��Ꙗ�%�FMyf<m����0�)a��qL�Q0O�/0��Əɢsi!zo >��$-4������>	�a��	��+g�5?S��>�!�'OIE�{� _�$#VQڑ�k��"�x}B��8k��|���tl�f��@$5�|
�څ(<W�5��[��k~Rڝ��L%G���~�W�����N�u6�뽚?""P�����.�E��V�b�`����֑��j�N����e)C��F_�y�Aˣ�sF`+|���wב���}~I�b��� "����}���T�b��Cl'g`�T�ZT�6l�ќ���4Ò�h��IKỻ��8�~Xcjz��>p��QZ$���ʹ*�y�����sI.�����
�`�6��RA����wa "��ni}�o?%}�O��%ef��Њ�*�bw�bW؂�G�jk�Z�5�\����:"�	t�ߋ�	���S��=d:�^�\O�3g:6��Qq���P��a��*.$���93�%������e��ᴹ
[���^/�!�ғ��pt�8�b:6&�!ɲ�p�x; �>_c&o�s�/6DD�5ia���ȵ��ܵ~�`�D�3�?ؓ�����O0���#J�P�z����ҼMV=�?������W��iC���o��N�>ˏ��:���J�ss���ɯ �����B�g|V�7p�@K�0�ؙ�8�8�� �����	��^��޳{>g�ab}Ǽ����u_T��oO��3�F�R��κ���VN6|Q�������N>���]�a 9@��|l�6R<^�����l(
�����ϓRzV_%լRc��o����d���|K3��5��ӏ#�)����Y�?m'�-~�stU��? �<�?��n�^�2�SQ�����_�lT��O�������[Ӣ�0$L�e��I��@p(b�׏͚&�
�C�'צ��O�ʸ�.����8i*!1a&9�y�z�(�@�q�T*�b�z��d��d�n�4Q�)�<8�ݝ�,5u����dA���.B�^g�����~��ˠ��X�Q�G�kw1�(@�@%�؃��g2�l���i�^�:${(�RD�IN��d��Qy���^�x�<ŧ�X��{�iL�D�~`Mp"�G��;{<�əZ��(޴�d\{H�qȓr�[;�6������w���#Ǆ�ET��6 �{*���'������0�>��@�x=3n��+RHZb�u��9��㳫O��X<k���!+]�{�ð�/�Vh����[D��b��������;!l���)*%˘܃ �����!��tL�����.��!FA���G�8ΪjwC��D�;*��c�`��ڊ����۵j͇�ƚ��� "���A�hTv[|��(
O�VҴ��{:#��T� �r�j�Պ��/�JG���~�5��p =.)P9ٰA�&<u�����뾵c�����Qk��Jѱ-V��a���P�����������ﳯ�X:#�P�8�F����8��sW߱�2	m�<Q�$j�i�'~bKy��Y[���O��O�g��D�8��UK��,a�i-��-�lk��4m�����/��u��w�=�w�ޤO��q����WF��;o*�'���Wk��3|���[K�A��V&���k�>��    tg A\���6��;��L�o|�B���N�J��"����W��왥�͏x�ҷ��z�(2���o����+�U��j�7S�d��M9� |@��!�>%:����S,!?p���w��+J��]s�?�����U��/�c���u�&M.�~�u�R%��_�L/�1RҊq�ڜ��V�.c�ʤL�FTF��x���L:&2%��h��23���|���������l�E1U�������^{�+e0�h$;-��_��W��t��������6�~�G�h^uz���'q7���WH<%0J�Q�'�-�<��LS7�z���o��K�݌��
�U����8�XxP�q��+��D��=�u�L;�Jf{�d�������.:���t-�u	p�Q��2��y��O�E�f&L[�wˊ�v��f؊���l�G����aK���g���x�3��G�q(��d_��^_���'��_�s2S���]�I�V�j���| �s�Y��*24w��Ζ
A�o���*QE([c4J��[������{���7X�d���M�D�Ă���N(��lqUx!���B��e$*�+��L�F)�����G�U'�~~ԧ�_��������]��VraMn�!�rlQ)��;�Q����;��"�֑W�PI�v��$T����@}���H������r�!���+��e�n6<�Uw��&����a�i#u�0�J[4i��[�r�QZţxlzė�AT3���ϯ;��z6m��`��E~DN����G2L���X��9��hԴ�e��:1/;��m;�%rg�k�Լg�"ڱH8k�+���R*O�u������Q|�#�a$t�i]i˲#��3��;,�U�:$�t{��v�(%��|��e��/�k�;o9]R#�7�*$M�ho`8=18G&9k�I}�r6$i�?�����a;_ļl�!S �S�lH��	Ă�j�hﰀ$�5�u�,��);�1�P�|����P컵�� tS�
�F�c��1{vJ�vml���,�g�`��;�{���7v�sX��g4�Q��Qo�fG؉L�,cҨ6���e��<]0j��q66"�)sc	�S�N�#�p���N��K`�M-uC#�������!�U��m��L�R�������{t����ȟ��t��J#HDH9x������M��o�J���W9�y�߷Qv�{������]
�]���c�N�>f�d:�wF�0r̔����Q����@�WB���&��:�2��!��'�3gQ��#ժ���1g�y���(���g�	 y�=�����&C����S�Xf�l\��$g�R$�%O�P���̘bO�}c����Xw�OǦ'e�ǳY��Ko�;z,�֎�]�?�7���i�n�贉Հ���xE��%c�w�,{�T���D���Ɠ�k`�I����(
��� ��:��<���A�,���v�Vp[�x�Y����8�wf�za�����i��OkX�,�Է��:7[�Qd��\�z�$�.V�r�ⰳ:�ݴ��d�B�\r0�\�Pf�X2���E莘8kdfh2��Й��۽�I��=.������-��'Xk�t|��9:(��򜗐�JOl1�5� �8�ǔ�pk��5n��a��
n@ǟY�&��U�/�C����9Mx�N��8�$��{��j'6o��>�S�qZ��'-��Op�������X�e�A��ר�w���B�u"+����Wz�4�M0��������ȑ����Y����^�<$e;t)���ωWaA
��&�t`�&��l���n���ќ0'JZ��xcC��V����4��a�-zGdK8c/��8
�gŪ�VʊamDWֻ���J����dG�7��`I!oaY��"���lM�Ş��qډ�Ɋ���6/�o�u���w�N,��P����r���!��hl�1����S(������u�uR:,=��c ���W5Bً�1�Q����ȁm'����^?=�����qV��(G�6�0�X� ����i��b�C��Z���,_��
D�� ^]�L��RW���k��9R,�<J�^N9���v+��Lo�ɣܩ����Z<�D
/R�#��a�k�zJ8m>}G�~��B����H�����������ǟ.��K������}��;o������_����߿�K
Ñ����d�K;)� H�l��)t�B'm���Q�e3���z	#�k� ��� r������q��q.0�h�Lg�s��M�y�vP���n���$mǳA-�8�w2{	��cJ������Iu�z)���C��E�	��H��]�ԣ��Bi���T��}��[��Ζ{4���V���z���_�1����8]��I?+  6d9����HegM�'��v9i�tV"	����
k�"s"[��i�-p_岂��	 �='�:O�f+\�2s}�\82�T����s
�]�)V�������?X��z��]0�q�J��T�f�>�M����{`�.U�/�F5f�D'yq�����Ji���"i��I�{fG1u5����p�j]7�s3V�� �8ָn"8�$��sz���k�����#��Z�8<�58vҙ��}�m]_�X+8S��ѓ�v�+t�X�f��˗R+B�c�E�G<L%L��ki2� Oǧ�qyG(�/ �~&+����m������'���{{�[i�X�w�^��?���&Qe���3�����k�Y�a:	MZ�qz�1썌���z���gW�"��*����1��h��iJ$A��Ǖ�����g�#�p���~QH5+F|��I�a���Zp�[��s��L������^�]�݌/�x8�Qн����M���������#�K�2n�i�F\�> �c���-�6�����HJ�\�q˳��0F���
��z?�!Y��u`�ӱ��R�������mR/�_�Z��� �:~;�����N�Fݕ5��ŉ�j��.�Ͽ3�
���r�?rэq��e �)����Z��I+����9������[��جXR}?�T|X����-����r��'������h�:��̢����=�k�*ߖ�>0�q%��nt @6�����|���]��כq��11�_��e\]
>,d ����s@
h`����G"ύ�l�{(��P)� �j[@�G1k�\��t̸��[O��x�)��8#j�����.��WX2�j���i�[�K��������grKyt�>�16L��%K�"�����XC��������:����z%�L�K�/�W�g�"�*�S��Kc�+��@r�0���8�-#cZƊS�uQ�`���� ,I#��󑉣��F���.�)˸��Fk�Ն_p4�NI���|g��0�G2]����~��������X��亵χ���:n�4W��%(Y���;1#�=C�Z��|�N����e����%����p�.��]F�������  �jɸ-|1�Cf�ç�ǆ��Xp�O�!ZוZ�&�V!]������t�k�O��I�#��I%�\��s�4�Z�i ���/
�.��p˗�w���w����,�VuM�o[�K��L51����z�ޗ,�&\'�w4�)s��s�e�#_���}��Ȳu�q�u�D6�� ���<{k�?Vz����d���(Hj�v�3׆�?�7��_���-�q[��pZ?_aZpg�y^�V�&2F����`K��ɸ�Q�ouX1i3��8m���!��������\���?��8K�����/:�ߙ=��BX%f�=V�S�H���_L:9��y�}:.��~�������Ok�#7�|]�����#�67��s��k�aM���/A����Y��Xĵ����g3��q �����{����0ga����FDg���}��S�=��L�����\��)�_�i^p'�v�<��}���s>m�@ǽ�����Ӡ�%��p��c�u�^'+]����	4���܅�=8}���2�	���ߒ	�wk\
c�����~D���_5E� �  .�m�=�z�-��8�c����Ԃ����X���u+��E%|����w.�Q�~?�LG�@|E�O�a���Of}��R�~�G�ag�}��ld��)�Αc�<���Ա[������CJ�|O�G�x�Õ ����BgS��G�q��a�V����Kw���d�{��]����2N�y��9;Ҏ`�G�l��	����nQ���Q���q���O���E��Gߵ'�- �  ��
�D�<[���<�)��%>5�]���<4{v���4��VSi��<d)�>!7n�/_U��R� T�]�q� H�7�pl-<*�@px�X�^���#�5�H���ڄ�m��ʦm��Y�̣���m���EpW���1�*׳�Q=�o��EJ9�8B��_P�	�?`]J�����2F�_�;AA���&�%g�+mpQ�������7G����g60n:4�X��Q�w���s��,�`�q���V��=QXu���˚�_l2���&|}H�6MZ�m�ۥ�!���S87#?'��EQ���J��j�l����+!X+��1�����j��4u��;�,|���>�1{�<]���F��x8[�Jǟ�C(����f�a��<W��i U��o�)�W~�f,}�ڬ�4�)��_��;)�O,��L��^��V`6|������rxD�?��-��1^��+#=�'Y�O�A)Wb��Xm#O9B�����]'�=>n0��;M:�W�5q���o��(�H��s��a�`���t��V����jB�:�� � )��1|����Bo����������H����Phtc� �᧏��gt��7�>G2�:�<����?hj�n�]��������J��Y��0�����[<[}�'�$�>�����T>�N����O���~���z4s�      I   0   x�3�,JMQ@\F���99��h�ƜI9���M8ӋRS�Ѕc���� lH      J   k   x�M�K
�0D��],I[Kq!�� ���I�C��
�t0�I��\T~MA#I�ƽ��ک�嬉%�_Y4�@�VM8��M�nׄ�_h8���flNf;���6o&�E5�      K   !   x�3��M,��L�2��--�H��I����� ^r�      L   �   x�MPAn�0<��/����H��r�e Q0N�ć���V=�����fT��D�<"�k_վQ���i?X8u�A��;"/��W�������;x~������ō��-�U�:`�^�.��� �v\���*B�zE'qO7�z���(����&�p�$_?�M�l���Cp"���DP�n�ɿ��>s:�鱫*�!C���V�_�C���>�Hz���h. X�	��9����3� j      M   
  x�U��n�0E�'a���V�T�s_�m��� �V��z��>޹�3���?�U�du��/��d-�׍� �莟�����3u+3ҍ�P�,c��Jv~���w�.�y���e^��j��h�Be�l��'u���!��7H_�:P�=�gj���^Z� �?��xa�F�����C%#��ea:8���,��lA��6�"u�����N����:��4!��y����m��:�Oo]��t�>�D�`2`�YH8)'u�m�o,!�%��	��B-w����V����1���.�F�Z���^�ژ�ۋ�4�
� _? jJ����-���/��������2PPJ� � J���3A6H�0� �gA�R+Q4TB�(�˅zR�x#�+\�QC+j㇂-�:��R�M�����}���P���q�Q,~~`>��ZG���F��#Q���D�wh�uBc�P�8a3���Z������ʥ��/�X;9� ��2YW2�Ƿ2L+~�������ޘ�BN���7b0�T      N      x��Z�n[I�]?~W�r1��1��t��v�Q@m�[L��E��	�}��DJ�L�d�x/^ܸ�97BM�[~Xo��򟷟�_כ��������j�a���Λ�_���ۉʔ֒h6I2Ji_��;�lߔ�2�(�FZA��T�d��)
���)r�hx6���3��&<���I̥����瓨��^� s���?Q�wB�b���`B����߯�ݼ�����B�����%�KW��gZh�'q�}�c�)�h��Y
��'���c�(�	g���!�LG�}�IǁK˩4�i_�!0�x~�)j��k���'���GV���͇n�͛륻���������f �h�3�LX�E�!�Q�4%Ju�|"���&B�>g&%I��h]*k��RE,�����y�6�(�R�m�BÄF�X�s�OD����ƑU����j��<o�S�U�#���o���������J1U��b[���(�u3B{W���~��(���� �|���ZQ�ʬ�Ԅ�1:�n��1�JdZp-wJ��mA�%>ƄW�3�Wc&v[Ơ`� o�uB����ˎg��pu~�,����.ËS�H{��7�Ґ��9irق���'b�^���L[���ߋ'[}n{�^/�5o�u�(�˷���=�< gN�L�2Of�g������Z��x����iK�j��Z��B膛�"��� ����9n��Y��d<�!���2�b��͏�4�Y1��<y���#��}?|�?�ֻb A���&��6��YH�� eO]ܓ��Ղ���L��R!��p�C-i� *$ˊӸʙ ����>���!D�F�(6�rA����m/�W����oQlE{+��uiY5���i4��g�VkK�<�~"��4)L�vetL#&����BpXӣEP�d�	)��ςJXˎ�*JJA]����UO��چ������n���q��v�j�F[�����7�����JO��ʋ-�A �C=�oH9�#��ֈs�Xn���&���i<��$"
f��YB&��91+�c)4���Gǎ+c�����u�f����?�ｐ������O����GN���2W�	�K���T�Rc�:�j�=�19�p8C�Ȩ%�D��s���d,ه�6��0������V#��\]���G���k��Kjz��m��)j7(�vu3�6��o����@Q���BwKFg���I����eӔQ�޴%���Rt-e^!)!~:����a�&[X*[����́v�kj*��sVK�uVIӞn��R���PT:[,��/3\��G��ݽ�������ֻ��4���߅��G������ռ� !�� c��VƆk!X2����[4��NKA�L�H�]u����5Y���0��o[����h�h6�E��~�nZ�Exͼ_�C�GB:6Y)}����>�8�#i��kɋ�^��(�n �\�:	�$qSo�VH���s$ml�
���k���ن[�'ea��p�O����!(�^x�����N3r;5�]�� �Z�qs^���4�6DE$�<½�{����q��M<�Rt���R��H
��;f�'�fl�,�j��+���#���8�j�W��r��;��)]� �L�2��P�f;a��E��#^W�r��Q:�,<��4ׅf
3@������J�!����uB%�4���?7�	z��.Y(}��eU�z����o���z��v*R��|��LϛF��v]�⋃{�Z�.����N=$��	��:18����yf �<�V�& `�����*s�ʱ>^pcH�k�s.E/��xp�C�wxUȤ<p$�@L�"�i��Ďt	B�N���;-�~^?l�vW*��QY�b!^̸u��MB��ic%`���B���D��ߥ��y9T�E&������������g��5��C���q���.Y+H�-s��?����@�1�d|�YS1�������ퟫ���n�7������\��0�(&/R31�� �W� �9�XxM���C���$@d�k	�0z>Ԇ�	�U���%��$.���v.e#��Jā
A�	��+~���U3�]�a�y����E��n
��/�ҞX9e�1�^�d��C���7�
�A�Q�2cF#}�f�,}���Qvݧi��(��x�5k��Q#HCb��f�s�WU+3���j\���v��|U !wm�Gyi�Q9~i���>n��5N�G��|��i��ٚJ��Q�P��v�"�o�b����xJ<�����T�#U��E�k=p�����cJ����?�	�2�b��^���$� 5�}i�
�41UVK�,�,�vk��3$r���i���S.��GzFu�\h��!!;]��H��瀇�����,�ǁ����>�7��Zu,&�î���q��HJ��n�v�Y��{�V�K�&֣��:lQ�A߱:]{�	ј#js�K��y�X�(�O�u��_�:E�M�P؁��s��j-f�����3tS��͑�<�j�!�`��
��\z �`Z;:�Vƨ�,�z-(z�y>���IpFl}��*4����L@�\����*�b���	�FY�USg����[��.X��[�������9��w�� 0��ޕv����B&���p�O��d�j�^�T�R�5[�������R[V#���_�I�Ið����?�i�J��:��u<�����	I2eLH��xҒ�8r�l��V�-���q4e���_�/�Kl����T���m|4,�Y�a�Y��Dl�����G
��S����j{��Gqtw�a�(��W(�;�e��
]�-K2�z�W�����?�$�L�w��A����-�R@��W�	���d�e�"EB��,�HE'��a�C	s���������A�е̷���zZ���Kz0PL%�~�� C܌F�!Ɛ��X!��� �+��>QY�L�X`?z�.A�Ĥ����\T*��#Acn��⒎PK��`�*ʁM�ԙ�O��V�9A��Ӈy�}�[]�Õ'��#q�$ziG��G���$�X^�p6�/#�*��d��9�9����K�;�08t��3���6�Q�!Ǒ�,,T�Q�|�����=���(�GIt�㜐Y{i[��$
3r��`����4�3=g�����"��/�^L�&�𠘈&ߝ�	����9z����-NP�!+Zu���ߢ�\=4�~T�R]~k�pT4�� ��3s_����Q��L)A�%�H�VҒ;[`�%��v"i��{��˱_���� �#�n�s��?���Z�Wc���������	�~D�J��A�F\u����T0�:�A7�a��6?Z}�Bg8�ґ/�`���9bӑ/j1p'��$�!%}����(1�c_�V�M�?`��)����K~HL�3y�����?�Z�6p�Xs�8�!���]:(���hF�� 4CZ�b��ǩ�����ܣ���B��g��3h{���KM���ML��9鼾4u��k�j��NH�Ho�n)F�,�;p|�?b� G��R·���a�`HI����@����c"��Il���tq���y�C�.u��D�D�57��őR�%� R���JR,[���[�����f�{e�v��x2E�������
.gf�nAJ6�`i��������d�y��F�
�ny~<䱍�N�̑:�Y7��??�	[�Y*�~�@���?�����{o�2�"�z�@)P*� �j���U�5_��zL�7�
cq���v^G�7RJ���]����T������g��^g߮������ވqO$p!o��R%��ĚC��XZ��� ���5܇q�HdPP��*~�n�5����x��|<5�rL����矨xzV�L�uz����T:�v�6��	 j���U5h"�����	:6ҚЁ�D|ÑG|0( ΐ�C6�rF�N)���((�|m�`�h�T������>d�Z0Y�L��T��L��Ư��P/Jj�8�M���%����qM@jM�y9D.'Ơ
���ȹ�� 8�L'�pʡ���أ<CB%�pN���-�8���?��Ĩ>6�(�L����f��0� �  ���y.��Ѷ�y&�V��-̊;���V�K9w&KN�.�L�+%��P<e��x^H�W"1e㟟���ۄ��#*�n�]_�����y�#y�~y����:ߗ��-lta"f��1��'��CׂL�pA��nH*:S��Urá!�|()��xY�O���S:�U�.��?N��g�@"��������A�4����viw��/�>���ëтe�V9Κ��&�v�n�������X9N��ngͅ��H�c�T!(�`
vԃ���A\'i�w�6���������|�믿��n����eW��Q�yR�H�}�͏����Ea�͐A����,JS.�4�|�%�M�SdD
����O^��Q��h��r��������������?�`����n��˕2�E�P�h]Ā�&*HӯI�L!A@V{����Ζ�0%*C����m�t�w�ˑ�+mTѮ"���,�r�b��+���~�X,���#�      O   -  x�]�M�$!���a&��1�^���1B��uDn�@|���WL��"��*���{�5���C�l���)�����mw�*�1�Q�5�>`���ڰV2j0����m��|M���od��IF�>*��q�YS�s��S"�Tl6-�),�SZ�f��2��Rw6�F��	���V% ݴ��!��ѷ�(R�$� �n,�o�J���J$��=6y�>Q�7�K�Orru6b.k�R&
��Qy1��p�\�a�7��Yn�F��մt*�y�4�!��%�$ײ���!ZD�k��+���+ʌ**'�&6�0�(3���_�0����"S����~���瀎:Fx�ʀ6+MeQn'̖���l�"���- B�ԑ����8��~6Ѯ���Q7�-�Q\*J-'�u*J*H��o���U�>%�5�Y���6v�lR�_K��t��ZT�; ؃|�4�\�J�	��tp�B���M�/G>�s5i��;4��P8�u4̎����F\k<�x(�ёF
ݚ�'��|��=UB���d�f�"�Zo~�������������      P   
  x����r7@��W�D�}9RV�Jb:.I�\�hQ�T#1)�}0C,-�Ua7�L���{�&�l���Į%��g��i�f��a��n��m�������v���ϫ���/���JYv ���%�NN��2&i�DU�sm�Bq۰�S?<�mHzFP@�ʚ:fp������Ï���3�D* �k/'P1��؈\�7�?��O,�6YɊ���J��F���_w���}�a]%	Z�O�Q�'�Z���װy�Wӷu=#��%_Zm�:�a/�$��9��^��oK�ǕP���=���[,���&�N�Bc5�� 7�s.��e�W:�|?L��q����@��8��{��'5�.�u
N�Y��ð[Ua)�qX�4�^�6�R�H�"R5�(0$�7�EE�f�a���3eN���a�h��!F�����k�6���a�9Ja\�9l�Ҕ�źœ�RD�S���D�W2� �?F�a�4~�w��tXϜϤQ���o�_�Li�<]
�/q`c�'�e�{��>��Q�?hu^���Mi��j��PI��x�^�O�����*Z�E�^O��q��f=��%R�ʑi���e�ԢޖUmA슻b�HC�1R�h�_B������y0q
er޻q8��/���MX���!:��^��?��wݷ��P^���"����9l���M�}�ɍ��N�<A�8�����6l�8 �%UaMU����ޘ��o�?}�)�5�@��ym?<� J7G��ۖ���rL�<��Lq]H'O��1�^��	50�ݯ���}�j�#0�����6۔�v���Mx	qϚ8�e!�������p����3�e�%�
:���������"V_[�b��G�d��j�X�Ᲊ��`�+8�ً:��(�Em�^ɮts\S͡����D��C�A�c��TP�y�Q��(�=򪌃�=lGY�G��h4W	��$�J`�%��R�D�%͎�
�8x�4�	XeΨģ�4'9��L��V�����~lṻI�|\�H��L3,a����n�x2�?L�R�I�&�� z�=_������(�\_ML�9Z�&�b�d�a ���O����@~*�%�4Q*��!vFח8���D,�;
+ÔW�r}I�5�!�a	�(r||����4-�<|��V��'&u�)���L_��9]s��c�N�4'���?a�j ������r��w�S>WN9����r���g��Zt42I8�����q�y�ŽS���wJ[���)ӧ��l6�7�X�<��e��?�����毣       Q   d  x�m��n�0���S�JeC�9�j��$R.�,��KP����$����7;����q�eJ�)��t�³iP�3�%�'ޠB%w�"(f�E�D����$oMK�#�Ts�YP1`��(�7W8(4��V5����{F1ˁ��Y6E-ÄW���k�%Y��Ɔl��ͻ �^����~����&h�%~�0���$)��u*�2U�D#�����o_�[�_��i
ɟs �޹i� ]/�P�O���瓽�е�������״/|���?6H]��V:�A��֋��Q��et#����A6Q�J���h�?Czn�\׼���	���iX����k�:      R   �  x�]�ۍ$IE���Y�YF�Z0��1=�:G�Ӻ�	^���~ED}���Q���F�>����������W��u���yw�Hl��-q�o�Ko???~�7�%��%�XO$�@y��|
17>Y���(�Q�C�C��h�h|I�|@�u�H��-�U$��zx"9����>6��7�Jzl|_�x�)�)��J�J/G/� G�#�#�+�	!���XP�O%4Iq�ō�-n4�hq�ō�7Z�h�q�@��ħ<�	��ԏ��,��|_�8�;�������)�#���.����I�S��b:<�%����=��8��ć%�}Q�R��5.ո�q����/ھ�颧K=]j�RjEj��(eYdY�2I�>prP*��Ȑ�#n���H�-��r��P���]�?�z��[�C@�NL?�_�-����/�}�E��^��"����F�_�l�1�xL<�<&��J�
{���^�^a�4�doa�o�_@k��)��z1�KC�ӥ1]����m�F�M?4���V��{Y����5D֥y���K�x1����b�.����]�->7|n8�p��a?\�c�{l�[��KGX��H���H��a�\>�#T�Mj:%���9XF^�8�O�H7�n ݈t�Ƥ��I�K�]R�%};*� � � �P$!�K4Z\8K|Y&����Ǧٚfk5[����Z�H7�n ݈t�a�W�W�K��"�"�Rض״c�ۍ'��}�2E�ԙ�����
%�`r&%gRr&�Τ�LJW^~������03�ת��(�Ry�oZsњK�������L�dh��8�b�K��T��U�/!^�`@р�!���>��-~�����AY�p-~[?~I|��,�V����֬릂M[�� ��O� � �P��j�Ũ-�l����_��}k!l�#6n�|�4,eIO�7�����}�Γo�      S   �  x�=�Kv�0E�d1=���q'q[���ºbt�}�}�r�=���������a����A%�W���U�)����;̸q�-�[�/��Gt���t#_?����_2�`ޟ�?e�`�#�,��-Yo��;�l�~~�;�y}6����`�w��}2�7�j�o�o��K�)��7��;�w�7�	np���e|#/#����f����	�p�;l���>| �@���Wp�vX�Q����L��W���'\a��.�&o#o���+�R�"�]�3���G��0�a��w�`���{(�[�3�{N�^���7X�����P�Cُ`���4|k����WïN��~9�s|���kO����ڃ����9�C=B=���c��T�!L      T   �  x�M�۵� E�3U��,@C)"�ב��g�~�^��ǘ��������/���(a��|�.��Aޛ�8O��w�@�#˔X���yW��<�7�*�Ue�J��H�GbK�R��u�}�9��E���O�]�&N�^�-�@�P��E������-GS��k�IEv 3��j2���6����T15����[�����A7�6���`?w���'l;�^�6X��bMÖ}�.�u�ˎS/��F��'�ƮG��q� ��DEHtC�(�b�k�-���n�HlD���BIS!�3��h��V�?�D���-����*���D�11��vD­�~x�\q7v=�+��m:��_C�����,�#��}wM�S�r\�q�
�1m���|~s�=|��[����������!.��T���1�O�#BI[�Zu�iy���	�Q�#ik�O�j���:�t��qW�]ߒo^�Ϡ�r8������kC8���\���zm�;U
�߆��)�=-L9t;4����#OQ]��!t���Ÿԋ7%~x�$�eC�CbB��KB]�+/4�`nś�u_�L4dQv;r���[2e0����(�R��.���Z�JIF�!��A�=�����zr����1��iH~S�aHf_<0`��s&}M��/�m?���T�����2iw2��*N�Q{��<�˟ǿ?���?�G��      U      x������ � �      V   _   x�=�K@@E�q�bD��-�ğF�Hl���$/w��+M��z�7\q�G3�����f!�Yҕ���yv/�YI�w�^?n���p���NT���8      W   R  x��\˒G<�W��,#�}�L�=h/�q/�bV;�����MET�3L�|003��xxDd#�t:��!�rz�����c��bO�$�obi?S���ϟ���pzs����_O��z-y��+T)�P?�����5�.T���@���d��)w�9�B��@�xyxs���?l�J�*H�nP%�Zn�B����>޽{�Uj�R=�ҌU�ڛ�0U�r�ZcI���?C�"%��)o��^>��^>~����?�?������.P�T�-��Jcp�m�U�%v��78C�,P�tI�J���v���"���U)ZqB-�3�'�*;�"1hM5T�����ׁ����w7.��6X��-����
{�;�r@-/8�T_cN����kݺ��w,�<<�bĠA�l�C�ZJ��@�ziگb�pƏ(-4�B0#�ͻ�&�-8U�B،Hʳ�J��%�ZUe�A�iU\䴷���T�j~�p��2{��/`�(��x��A�Jj������Rh��4o+�W?;�%䒫d�M������&Y��h���R[�������/O@���EJ**�߸����*�u�r\Y��2ʕA!}!��t�ɠ�K�u�n��P�Enx�����_.���ߠ(���Ad�#��Z��F3�X��,�T���P�2&��K�ԗ{(�6�����O��N��/8㇇�>�ۆ3/���f�Ƞ�EQ���|�d��*~��b�1�U��"�[�M�%�Zl,��D���-�d���(��v�`ގ�J��&����bG�	Bf+S}K�-��=@]��Z����������C��%�Ȋ��3�����Yk7ȓZ�I�(��r{�q����z��~�V��e�"�"�"����h[mup8��Wf�����?~Y�A�+�f،,е�W�����
�|� Tg���3�_u�w�3�h�섄lP��lP֥�և����8����+ �#?��ۤ(�L.ңu�����e�<Ԧ�"���b�
9	�ڭ�e%��1X4С�PݿA�Z�WnH3�G(	�z+�����J���0\r�ATy����$������ߜ���;�pY�"�xuv���"fR��B��f�e�(p��F_��א�x�,�fH�iV>����p�\=pz�@���$SPPc��9T�n�6�W�������.8�e1N~�V�����[������t2f}+�Y���/ꝟg������"A��E{�m��:��H��P�hL:�>�D�H�ⶂ�H%����Dl:4�f į�d��'ge�U��@n��k��������W�j8/�z�>�f�6�(Z�AA���B����*YBA�����*��PI��"3�q}嬎7qE�qʉ���V��k�ABuV��˼����YYn��	^�si�I�K*�1qV��ʠ���E�]����M��!��=��ZB�r�9��Ls��3gE�,��Y�0�p�ud�P�I[����0gp(π ,�Eݯ���0�v����1������4+��3g ��eF���y�_=���BOh���:�Y��b+ƀ�X�3ci������0��^��2ϯ�"����zZ���$I71mv��E���-!��AD�A��AʄA��AQ��R�����ǹ��t�/�p���7(0KG�,1�Qcg���d�!����� r�9�����Z9+����Ϯ9��kC��q�n_�$hH$s�RX�i��f�Vb̊���8����X��h�9��O�a�^�3m�Ul�:C��<s�bi�q��Z����x�����}����f2%7�@ ��讵�в�fv�B��b��	 ���R�+�If�yӘ@��
��1X`��)&o��v@�_�����6��i]�D�E�n����A�ߪ�l�c�O<�x4���(zMy��&Ρ�����*��}Í�3�Z[��z�I�Ӭ6^�Z�}Ëf�}�o�l�
H�4�~]��[Q�m�Y�	97[KH�ƨޠ�������&����֗��f���6� ���P�x/3�ٮ�	7��K�u;�3�=16��vVkm��?��ʪ��:�����:�E��������ޡ��_���Z�gȫ8�$�ʡ�A���Y���P�CM'����Y�X�H��Z�Y�@����ُ'd?��a������;7�񙌳:�ۿ���/?���y�����V���v^B�q\_��K�9��%�:")��fEY�
yRD�3��ۥzb�g0o��Yx�G3���v8�����;�f�[؟�.$H�"lL*�X%aH�@mR�������xM��gR�����yb80�f�Y�~��L����e�Yע��'���HX�r<>������E�PD�Z?X�RS������
I��'Fa�~�P�X%�FŲ� �0��Ck�"|�����=?E�R�EQ��o5��������Xx|~�P�N�M��m�1��Ud�`d��U-��)]�ׁ�U�Y�#�YVk���3���E��FK0��q(c	G)�8�O]Y]q�N�����?w�Xo-ϼ&���c��q�� $y���q�f����Z��:?��Z���<>g8��~@ʆ��4¡(�p֪�mu|ꬎϐ�(��5�7�b�h�H�Im�\[+Q��A�d���.���=!��;O_q�f}g�&�mE���C�305E@��gg���YQ�k���>��á��w�2��}u�Wr�ᴖ7�<�@)�:�<�<̊# �Y��������A�)%gQ���(��S2ʫ����x�Yy�R�Yy�^y�L���W�7P��s�T�)�K��&�����M(oZ�<է�a�����C �崖�k�'k��PP�xG�b���9�����_����������R۽      X   !   x�2003��4400�
s�8-@�=... W       Y      x������ � �      Z      x������ � �      [   }  x����rd9�c�]vJ�R��7���0���� �'qu��B���?��ǿ�����+b��> ��D����?�F���1RjIo�c���@
A���qP�|D�5-@ (��F4��o �*�����-dl���V'#� l-I��:��Ll!���h���`Cj	�@f$:��#�9�qaiX��°� h �X6���ㆍ�]���0�=$Iy{]�Fb _�.Hy=j��ꨍaOF@D���m�E�����u�&RD�.��$Ϝ�5iE\�b�����B/S	�Z��q������pF��P����'���z"��NG@�_��En[NV��|���H�W�Y�k�@�(����z;w{KZ�P��@Q?�HO��GĨ~�����Sd�(R����]B�C
�t���0��"}������ٓi��Z�m����#2%Nzr�r���C�>>���G�1Yn�J���B^߇���� m3ƽ� �To~���z�V��/�@�G�Mw�MHnٰ�Sϴ�>�]�E�+�mv�Hq:��$��b���at�>��DTC�R�M���6ld4b~���{mq;�`ѡ�{u]J<��ObErXS��*���oe �]X�[�62�,��dۣ�Z��b"�\q�Ȝ�k3����UA�I�==��.�A�4\+m��:��%s�K����l2���ތZ�,4ʲ�&��7���X�����eWLa���(�ԈҪ^���H2БҚt��r��:�M�F�U:I����9-=S*yVt�J�ޓ[��:���SR3b��r1z�C]}9�C��S��-��5�ڎtX�G�zz����({��Iɂ�DG�>}�e�~΁�sζ��sF�S�,S _:���޹�H�|������f��䆒���%S���,�����ֱ� ��}�
>=�J�GɲĔ�U�ȡ>�M×�@�L�C<*��JTj
iN��AEz�3�2ft�jU��_���A��<}+r��
���eJ�� b�ލoȺ�#��S)uF�W��'�h+.[��]���G����پ.�����Y&�	��5:��VβN��y��<o;ux�y߰b#�5�:<P�,CuD�e�j̳��pF��~6�(E�{�ج�����F�4�������� u+�      \   �  x�E��u�0D����
r�H������f���+l^���}���S't|���o�<I]��y6�P� 
��s'�-� ̆E���W�%�������)@b{R�̆��t���K>�`վO��AW����0�@����&0S`t	N	�/W߳�V�s	P`T��y���؎8��3��(=��G*�|0!0�-�U� B�	�`���>P�5u�h?�l����;	���L����dþ�A�#�*]���eR��[=�{R-������d�5N�/��9
�U��Jn�
A*�y����b ka����dpq�s+p���B�E���u �a|��	0�	z��w8	�EhEc*�&��8�����o�N�4,�\��Nn��K��������nL�]4�ך����	���B�`N�I�u�]�LeI=�db�������|=�����'      ]   �  x���OS�6���S��HZ�=:0o���[/p�%����C?}��V������I��vW��a�/�Y��ጓb�� ˭q��n�5�U]\U�)��&��X�����7g�;�°Y��81%8���2#��c��k���{�|�mK�����فS\��e�}��tɘ0�HeCO�H������v+�.���V,{��ĘB�5����>�_�U��E)z Y���4���jS��Tŏ��s�i��7�h������)�M��7Qo_7V0,QO�\���B��:b&�u&Y�k��asI	�V���9%|N�F���J���r��\H+{�d��h�����BɪY
hr�\���
HR��y�����o����c�����gHg�������1�s�H/�-l²�[���/��g�6��� ��!y#�H�;mB�3	��Q�v�>S���vR ���ߣa���f`��f`%��l�E��4z��&����c�R�	+����mnH�&�w�RS/��׾�2rF���;ՠ;F �eƘ� T�s�YuQ�[@�* �ETY���"u��]�
��/���������vjn��Q�1z�ݧ��-��`���}�(��qYm,M����i��� bݦeu���h�T .`�4��c)�?h(�A�A��J9oM�L���s"k
��)�5qU@Ox/!\d���`�.օ��0X�����0�7�}���5��\o��ݗ���a��r�����%�.�E��8�XQ�G�ã������pG��Y��Ua3i\W�[��x#8��7���x��.�A����}�D^�؜���2}'ºp"d�A���!bJ`�21(�C1�4������T��� A�'}����a��wFS������޽��61K 4����W]<TM;�'n��q�%2�L�t~�_EYo��O���x��D��8�՚��L���u�UD⥁�k��2�_�8�ͥT6���1��cp��3Բ�#���C���L/�NF❌�/D�_�2�9Wj��QZLl�tS���~�?GQ\��,""���=�s;a�'�B�T((0&>fd�E&];�
M�X���Xi&�_t}�/G�ddk�g.����~Y5���j0.cjF��YGճh5���h�E;0������T���8=��i��c�Vv�<Pf��Li���&|�����S���	TaG��I��xWt�������³      ^   z  x���˒�6Eל��d
OX�V�f&)k��.�
C��B���(�$J)�Lis|}�/��� QY�xD� Q@ 1�PŊW5��ܴ�y�C���?�-���Ns����1�-G��۵���S�Ke���7�ױ��Ʈ;�b�/W$�/�wr8��FNrgMX@|F9��3˸��F��S�s3ɿ�w�s��.$\7g.w���æ|/��fTl̉3Z��%���-+���ٶ��a��㲢6g�8��2�c8X�e.Y��+_�^Ns� g:k�J΂�U��("���|�b�u�ȁh2DCG �ĺ�0���ŏ�Q�TS����ŭ&DZq��׌yx4=�D3_ݙ�=@���P4z�#��1�fL+�P�u�fmϚJ7z"�ܪ��_r�����-k�U�D��I�$-�\ǉ�N����h�M��8zgSR����a���dzg����f}D^�$�4�]�����v�s&�d\�4,AFL�(��Ko]�⚻�w.���q�qvs?�W~[	YJ�~x,9���x��;��`���,΃ �A!r��E���b�8[mű�4�8��~��6%��{+�6�G� �3��K~W����W����^�{�8����-���t�{y�QX��IF|�	���Vխ�ʷ���җ
���Q?�}�pu���v8��}�w*u���pQ�N�`楋�b�Z��n|{��=m�UE����o2]d���(Y�����9�N��g�)2�(�w�Ċ��"�E�~� X�Eg�+�fRo��p�pxI�^V&�t���X�ߴ�O����9xz�^|O���tn«��.`(3�'��~2�m?˘`�3�s^���94Q�8�xU��	tgz�[�[���]3���I�A���f�vM�������<EM��4�E�^t��5�����z8�ߔ��>��pY.�_�k<��=�"�����lfV�:#��v�yM��V"�YXX�D0�[�"�7Y 1��v�EGL��L�ȋT�p~��(�La��(*��~᪓����}�"��@lvWg�Ef�r0��f�Q4��k#���3ܺ[p����.Sn��sA�N�+%h��@��!���4�Rge�#h�5C�{�!��ti]�F��;�]��7Ӝw�_����%�      _   Z  x����n"1���~�������@���丗ADL��ۀ�f��6�DBʧ�r�m�3���<9�h��=�A��!Fk)���v��Y�����ߘ�b�6������>�3
�9�ā0d�c ��P�*QqFAb}�9���t�G����d�#d�`	�5�{�)�ws�Q>S,Yq��[��|̨��81�=U ^PxA���3��'���0^��~o�f0��?E�o��� ��eUPzU�{�2`F���HdƱ�|r����v�&�������`C�S��*�e�'�ev��D~l{��C�Է}TU���I��w"Q��[�˳yɭ��o�'U��v�cV#�R����
�;L�����$���<�ʨ�J��:�b�J���m]���ۻ۹�ү`�Jm��ja�}V�)Z�R�^T�rW����TgU�rE����PQ-6����0o�*�jp)*(�A_P�^I���k2|��y6���#@����qDIT�SE�f�ݙc���"iqV���Z�g�c�=l�������Aop�.�j�aEկԮ����Y�l��6�h���M��l����c�k�ߏ�G�zU��S�	u�����?yƚ=      `   �  x��VKv�0[Ϝ"h��e�ٶ'���Q�%ҥ�q��������n���~�;#
�a|����c@�MLgm�`�M�����mY���5ÅQr.�C2>�I�`x�A�}bT6�?�ک�'f����O��'0#���-���T�����N^��t7��Qo���{��ԃ䤫^�R����7=d��81#�oEM�k��ʳ�5ԴƑO�-�_㑉�ӟf&��V=g9��[�M3C���&M��e"Px���[�����ûL=�W��g�tXsa*l��W-���
�|)�� ���S��԰`"��!W_�|�/c�9;������Z��{��^0�썘St��?9�ϦY}�8k�g֝�û5R�����1���Ytn�3s�9���\���ΙO���#fpϙaϹ���_�ŎYzx��#������'j�!j:=�5yh���ӻ@��V�z!�n?\ː�cv�M*�?{����#0k�����zd������!W���<�*i��V֝��<{��7$���z���z�`��^;�N�1����뤦#_�fދ�N�.7��?TTw�I?g��c��1E��ɻ�t�;�Gx�8����
�y���pbFaꜾ��#�%^��ǅ�HMjdQ/�Vy����������74j���]n�ou#�a>����_��]      a      x��}ˮe���X�
}��w�C&4���\���4���ޑ{�{�npTm��Tuu��|D��p���{��]������f�K���\�+��ZqϤ���_��-�{v?��r�Ò�ܔSc佨L�	^�%_�\�/�.MF��_t�G��9B�0Kv���[�@�<?�^�����Fs.����Cͫ�2s����O��+�R�%s�ʽ�`�\ws�G~��rT';uF�M{p�#����cp^w*��J=��ەOk�����@}�
�5�#_Ew(Eg��k�Ň负�ϥ���N�yRLW~����b���aM|����n�>��wR��{��\1A�"����=�dy설���13�1�&x�.���<FI��H鿦�����/�PW<'�G�pk��_��s`Q>R����}����%��Z^A��/�A���?B�>�Z%N~����]��ؾ�_�g�z�1�y�ז����@�ς0��q���Ͻ}	����=|����Y�ʬ?t�H���k/>mr����S��RC�)�0�����q��?&�%��6��ď����C�/����O�r��-�M˚L��k�:�H8��#���޿tl��r��:R*�%O�_)1�1v9�s����L�OX.�j���;Ϝs���_l��������;d��gx_Y9P�ӭWU^��'c�ݥ��~vmО��wh�<��v�G��>�S(�hSK:��7�ll��y�|:�#+jm�����چ�tq��_��Q9��B���_h�$x��9y�i$��+?��Y���?�ؗt�g�W�^j�;yj�S���Y�X� �>=�?~����E؈X�<B}?�g% �x�&xR�^h5%��r���į����J�S�7w�Y3\���e�bp�Q�]��צ)x�Ľ����L����0U8��?CJi� yr�4w@(����E�
 R�秜�Fi�ڏt8���	T1��W�x8g�%���z����d��A��dW.�O���Bv���l!t��o��3������ۀ��_ew�\��y�����b�����KΜ|��y,�����}~�H���\�x�ɂx$�v��X�8�ֽ��◓<r����K�?����A j��/�������pp�go ��e��_�,\�^��k`�X�OԢ�Ou���4z/������VKN��ߖ��k�@���)G��Vr_;�d���{�_����{�,���� RC h�t���L�c���!���P|��n�Qᾎ���Ո�NQ��@���n�G�#�<CY���A8�g��++�=%_4x���G?�TXH��[8��\��i�@r����(����	J��(�O�����<�[ �γle��n�s���ֲ�Z&g��IE���/hC��(�[)b��#_��A�`�a�p�_�-���>u~9 �rS����ˢ��!r�����ȯ�o��u����CQĀ���J
���Nc{;�QJ��v��&�%� �"�k��U��A�[@��sKE]/IN�����6o�p)g����>��{��?���iر,ك������Q��+�e� >O�?�sZRf9�χ��fx?O鿄m�m,��׶@%u�"�}@��_�:@��:�?Y�������@0e�#��X8���0@x�!��������߲`�Pn���������R^�~E���oݹDǝ�&�Џ����p�WKi���J*Q!�Rv[{�'����L0����lw�C������������Nw��cP��x?_g &
�������{:��Z��E�W/��)�����Ɣ�Z��w�xQ�<�<�#�E�/o�e% �cn5���z�+�aL������N޽����#_C+:��n���� �$o`PJ�ʺ[�w��JJ59�Rk��p��j� |p�?��'�<�'b� խ@�tiO���3%���U)��"�f��쟋/`0dQ�����v��ȕ������bP��� �=cN�����;����uC��_ԥ�.������'�+"VwG'�������?;x�#o�n�����_��s[����Iᅜ�����֯����V���o�жW>(�O�0�A�4���@&���>�x]S�竫;-lV{��W�U�WJz_O =G^Jm��	FCů�`�e�]y�X7`���ĝ
���_��IR���o�C] ���� �uF�v纈��'��fph�F����._@��R< 0�p�=�Y՚�x����P~|��Xpp;�~�o��QW��?1����c��/�*�K��M�L(ȕ���j�q���y�}�<殔����u��w��AR��-`�N�_�f@h'�J���A#������!@(�_,Q�W7ñ���]��R�;|y��y>�.CF
B�� �iď�c���GN[��y����7g�DB���IG�;�<�k0+���^>֞@}<x=忞�[����;J���.����t���}¢��ߒF�;���?c]Gů�y����V,	+S�� �0��?k�s�.������Ӡ!��	<z�$ ��.N�U��?^:��򜜼�=|� ��Vs6�2�~L�� ��?Z¶��NH��&���DK��Y2���[��?��aI8���(I�7���GX-#S�_$Ե@��񿈛/�E�������Yc�,����5ֽB<ֳ��GFa����W=���-������՚\��ZJ��&��?pU��>��gʃEe���\�˷�eB�:�!r��d��蟗֗�4'��N-#���G� ���A��X���� @b.*`��U��T��9u�5Q���2�k�G���Z����W��-�|�/
�C�!��ݟ���r���Ź�=h%�Ƌg���/r������-܉?� ���H��ꖮ�6���p��.�����&xM�~໫_��+r�m�ߦ�9�/�^G��E�?�����?�_�R�Ej�������Uk���6�\{Ɩ��J�`{D���4�QW�O�Z ����R�W<�7,	������_k�����>d�N
���O?6��SA�g);P��ɖ}�'� p�X��5�e�=�7�A
#{���2������\�A=��*��&�:��F?��O�%�*�ü��F�?8TG��'���s��?(����_~%�K��?h�h���{� �|�)%�?�b��k�e�����~\yD ?:X�0��9����]r��k ��Ř9��3W�g]���m���S �	N����Z<0T��� t��bY]�������?� �`1'���5���C�nF#?,�����v�*<��N}dE������܀0�˶���/L=G,#!��K�-/~��7`w�+��2B��!_���� E���2�*��-��lI1E��XT?"�]��R��	�����;�g;V��[�E}�/�Ӵ��;g?�swS�y ApZ�7(d��.,���8��g�������5�������}-X���w�n�0ڋ�s�*��Ǫ�9�z�lZ�����]p�ďP�K+�8�P�# ����c?Uϻ3F��"�2��ȏ� 0�۠��������yFl�T�P�Ա,�⏌Mџz>�#�x��r�gh�|KU��������
���\F�<���Z�4��~��e�u�g�L"�����s�����n�{k�c���'O�?��/�H��IG�78���}���=�~Q��@����o%�U��� ���خ�?1E7�7p��Zހ�7��,G:�1w�6�����0E�r��W�~��Sh$~%z�I"0Ľ��|D����$��Oߚ2���A�A@�{_[~jJ�κӹ����N���Q������t���l8d�����^�|� ���D��<<���1f_�@�S���#�,�̜9��w�����O�w��Bq��:��kv�Q��fY.���_F�ع�o����?8�V�?��+�9>���%s    A]n�`��7,����?�c�q�5��ؐ�������wW�Y��0j���,YցD֓�? -������/W��� �:&|�����Y��L���U$��R������X�$���%=>��?�"�\�՟Q����s;�)b)��\���7�8�?��Қ��恵 }�y�O�����?������sq(bJ���p=�����������z='�g�w�i�*�;��d���H (8u~g�3L�����|е�P����Yʻ~@d ��"w~���E`5��S{�9y��2����ԑFۀd�:� � !s����
��xj���u75̆�)����<�$�����_����X���l�[+� ��Y��~7DY�?p���-g���֟��$.�/W�`�+�����	����Q`:X�S?�FE��
��|�N�
oIt��D�_��Z�����h�*w��/���4"���S�7�r���p��]���,�,����<�?k.��(v�S)l������bd���>NKߧ�gkX�"�~uZ*�	��?�G�~�az��gE���-�Zo��e����{��|�GC<�n2��f���?c��@���`;�J͏�vg9�:�p�'���`��<�ر)����)�e�&��O�0�~\�O���$����>�E
w����T�l��e>�*.��B 	[)����|@����GD8x������t�>�F.��O�˴���?�ܦJ�����4�~�� ��$�s���Xz�So�� ����;�쟜��o��D���w�^��!�r8�e�S�� |v����N5W(g?�u�Ϻo��)��,����IO�~���,j����J7|��jd��w??}�W���0(��p�p����C�T*~�0T���߂9�^�s��?�g�?:�vo)��b��=a�~�ه��k����k��ԯk�?sa�V.��"K���o��G����W��G-�����=�z-��?`YO5'��n��b��_c�̺�q����-��|�_#���կ�&���y�ϐ���^�������oKE=P�_��;�e�Qg�?u��?�a�#_y��C�`p��+��`��,���?j$`����N�*uq��0Ӽ�����s�'�T2�~������C���{��h3P<W�Y��?a��7���1�����g�w[�$,�~3����Σ�k �� ��_����<��d.q��Q�)6p�#��#$۵(��MJՁ�3����s�R��z�W���+ԑ�a�������ɹ�����?���������_��o����3X��3�~��}{9�jĿ�}���=g;�n�O�?q5� 6z���ʃ;#v>m8E>�0�O&�M��֕�/
P��;��m�4�r�C��(,n� �8��7��O9��K@��ƕo��26w��V"~�ʋ_ ��(W�O}��
^�)���_B<x�>�q�O����VH2־�?���{y�@��@��� ~?}�����i�kv�+ȈB�2���K�����#�n����9����ix��P�R�4�.0<�������`�
� �	?�ȃHP�`��������r�G@~2>*������C<�wR� ����w	�|��W?�B��m����Z����ݫua:��`6D�X���Ew k���/(O�]����-Y�C:�?���Q:�,w��i �دh ��2��O��џP�	t���[�h,W>��Q�7Y ���+P�y>�8dV� �E�j���Y�Ҳ{,�JB�O���+���P����l���?z�sZS�� M�;y��?����W � 6�|=����1��3pԸ��C��;���/���.?�O'��p��u�Ɵ����`(�m���
����&<( $��-������J�#� ������q���q�0���= C �B�s�u�m9���B5�2j����Y�! lȂx��X-�
��wC��`����.]������\����� D"N�������u�Od���N�q��=.�0s�h����cZ�^��N�OU� ��gn �u�_F�35�����5=}�-}f��� �E�� -y �q�	<x�>����:���4���<���lu��!,��4��o���#8��y	�Ů�_Iş��?�����Qf���^ YEFo�H�Vں����V�u;|>��X���ڟ[��`�,���Tk\���p�e��jh���OI����o��= �� ���o/ �� �����//��� �����o/ �� �����/��� �����o�N��2���oP�M��6���o��M��6����оL��6���o�M��:���oP�N��2���o��M��6���пL��6���o�-��� ���oP�-��� ���o��-��� ���oо-��� ���o�-��� ���oP�-��� ���o��-��� ��p<�uu���:���Ʀ�|[��_�[��m�o|�@��_7����ŷ4�m��m���|�@��.�6����ͷt�m��u�/}�@��N�6����շ��m��m�o�}�@��n�iXkk��/�CgSܨ��Cm��`<���"
�������׎_���~�S�����:S7b)���3\˟)�?w!lJ=���}~�v�Ӵ�~@������z�AO�k�����<�@wc�r���K��`���N+���k�8z��n�~E>�~�%r�����#��\h*�ʷ�� �/v��������y㪡j�KXW��G~��B΢���-���wy���,s.���ȃ�e�H�|���eh��ܢ�ͪ��>��k r�Ƿ��g�5�ۂ��/e {�� �CH�<�:�]>�Z�K�I�?��2,�����5r���0��<��|B �k����O��y�#�)v�@�)vٷ��!�!��@���Qt�t�?�x^m����ۡ�#�*�E�ـ����g<����c�om�ۿr������ے������d$��z�8���r�g�!)BW��� ��'����6"�O��C\���;>�����v�}�2�ku���g���jci��?Ŧ�I�y�͝ת�X\�uY�#���"��N��l�͈X��:�~æu�4��7�~?����b�+P��?�"�?�F����^�8�'`�X�<G���q綮������� )�_����=�Yi~\ֿ��?b��YA�+��j��lf�O�7*ƸQ�gn��4���;�E|���v ��^��z(��R� .ee:s���T�&�ӟ 6AX��������	�;"��]�k6SV������s�2����������2��μR@�9�@�`䠠B�W�ƍ+Ɇ���
������~�7W��>���7%����=#~8���O@?�ֻ~�����>g�9�~⇍x�7����g����w�s����1R�گ��;%K����~�ȑ�_:8LPh���v���5e�Lŏ$7���?7W�1�?y~�蟕�ۻ�L�Zl�Yh���(γ�_d�@+Zτ��uV�A�f���±d����u �&*~JՁ����a���,��̿V�g�sl��-��Z���&�������?#�?#��r���fbƉ���R���SHB9����
��[���$�q	�|>�/���@�����J�/`��@"��o+ ��Gj���e}K��7g��j���O���7��ⷶo ����]��!O=?�b�o��-D�=��l)��g���E�s" "��!��u�%,�?��*�����p���GG}�hG���)����B�K Z��o.�F9��ۊ�������?��F�>7X���*�#ߋ=�H����������G�[���_��$]����|��'��H�"K���_��F���2eV    ��� �u�(�e���[����B�Q�c��p��?���/;�����J�in�` z���[�@-�~�^o_�@�	�ӆ%L�r������>�Z�2�}���=�؅z~B�^}���`����N��  8�r���h�Pa9�!�-Y�[n6�LkS��,��/��t�)fD��0֜�����#C�������?��iq�ok�Ps=��߃�o0D���N<�K��Z�nN��u�{�n�AQ����ۻ���}o��_��=:����O��@*���@cPF���hv�?�k�uǊ��گ�?�&��Z����	��MG�\�]/�f��5��p�=��>�=�X��7�0��Ҹ����χt���n+�K�RX^�j�|Nv � �.�A�w�Q��^�����'�$(xQ�O⻂���"��s�/��v���ٮ^������i���0�?9��w�k'`����<\Wj/�}�oר���L�%�����\�ʤ����v�7��0�4�����X���&�G_6���'�`�^��O2��S��VPy��(���w#�+��J�ò��i���i�ݻ�_�蟟��[�����������2}Z*�מ/��U� �������[k:J���W�_[?��Nܗ�~*(�������oA��B�A����^�Wm�%�^	%_@ =�籿n��㩪�����S���3��x�����+�Y��f�����?.�$���V(����j����r8���ޘZ�`�����#o��5¡�R@şO���m���@~�q�\�_���x����(�s��\�w���o�N�_��eQ���w��E�$�P)��a�?Y��C���~��ւ�^j���\�U���q ��������Q/��k�1�R�S`@�垟6ih�5����ՠaՋ^�x���GD��J���C������F���Ξ➏���ޮ�|��p��7���@�c�{'�Z�6�߱?�v��)��u:֝�œj@����|�a�����+6���k�����/��:���Ө���iiG� ���A�����s�o��=@/9����-�]�]��%��F��'���G�`�*�r�7�6 |���3�>���������h ��3�������~��\�V.~��5�p�ʪZ%����X���Gʧ����'����� �L����h�>Wq7���?`=�$�u�_p�A���w�����}�.�=w~h5+c\���.˜�����w���U���uGϭ_�B�/���p� �z���3�ȳ~�\�9�����s��c���vnd(�R�b����v_�T���[���*�y��J���lk�X����gWN�^�ɺ8�qO7�`A=�׍��3�����E���K;�zN�v�[Ns�R�?@>[������(��Oo_���(���X�h��|^���~�O�(�p�~�[����n�'�Q�7X�r��>�$�#P�!&����J�"u.~�n�#Vqu�b�x���`�O�Ն/+�Kl��{Y�w�N�2�=�)~� �c��N���<�/L�O��Uhϩ? �k����?\enr�W~V��S[������y�)���N�
{���v0״�f�K��3n��{��9y�
��o���=߹�Ԋ�g�/��	>���.�1r��:<�-�����Ǿ";N������_kݥb}�������H��.,�eZ���|��\nJ:���r�4���%յt��ON�J��C������ ��I_�g�B ����S��ٷ���ٿ�����9���AW9�7\\�#�g�?6�@ �������OWn���T���?U�]L�����e��ϲ��5�r�g��t��?�[�A�������ɭ���w�����T��㿀{ �����\���[���^���|����1,�ܑ<����{��O�pxO*~��?�Y?�(�
w��%���N�6�#��J��V,�����?�������v{�� v�������?�C.�}q��n% f��ٿ�?�����X?��Ec�OȞ�����Y����/rg8P�gp] ��?F'�_]�)���Z�)<�����(�_r�>��<�skiSK*��۳Ș��~5�BPJ.g�˿� ���kULT�`�b���՚/I�N�T��+q�f���Y36��O}?h�� �[�O!z��RO��Y�!�p�O�aNC�����>����<���H(��V~~,w���Ĭ�M,��=�;��Ř����ռ��u��0�{�����hnN�%�AZ��W���;��zz�>�_��/����ſ�70_�j���hv
����������Ǉ�V����t�����1��N�7��|�Hٯ@kE�>�߼�:����jU����?zZ�[%���"��N���R�I��\����?����ݻU���lD�(���C�5U�5���<X�?��>�W�a�/0�p��z�͐��Z��zL�V�J�C�'뗱v����?���z'{��t+H��V��(�Okq������[�6鿎���?3W��	�.N^ll��ۿ	� ��:'�
�fM������~p��@S��}��59�ap���/N�3�Q�A�����Z����p�q�;"(���w�Ĉ���0��V�n��?����7�el�v����L�.��oz�G��A���{��g�\��3��������}������T����%��d *s�������/-"�%�g��K��(�Yʣ���-��??�_>�or��@}?�:�b�㼿���Z����!lv������W��������j)���`���z�aC�n��6�,��I�J�j�����u+j�������_���DP���?�VgfUc������Ó{����_�$����O��31��[Bw��\�\�����y��C��"�q�Y{���:�?= ��'(|�.Lw~�U�?���;;��
�3��Õ����p�')yk��O�ui.��d���5ڱ�٧�y�6C#.#0�� ��X�����D���+�;!6��R"���j�[����O�<�e�����w��;��r���d�#�C-�t�_��PZ%Oߟ���&��/<����ǟ'?<���<�?�=P�f@P�C5M��;k]�jl�� Ά_����ؿ (q��J?������`]Ğp�N�Z��$=z5C��y ��Җ;@l�����կ��AW�E��P���9��{&p��%�4W����՚UP�q�_�e��[P_@Hg����������A����$u6H��ߵ�_ 0��O�YD��mp�1L���ͣ�e�qJT���Y��������
r�+�V�w~C�	��Iş�,y
1@����k#����=�Ϗ��g"$���Õ���wOj��n����w�oL֟�4�q,��Y?x.��v���#,����u~������<���.q���|#*���l�z�w�� ɀ�F���v�~�JP��K����\`�r珕8��D���� �9X�?���HI��m���Q����X�t|8�O��^�N���6�������uO����|�����aM@(�<n��#o�Ě���&~�-��Ώ�!9#zf.���L�[��o���9���"��GM�{�U�G�J�d������8�f2�w+��w~h��]E ��% �}����|�����ޡ��ʨ���gZ�LV
����B����`M��
���T?��֗��M�n]�p珡���_�R�+@$\�C�e$���/�!K����v�]�l����.�ҿ;�r3��NHߟ�,���fg��3���sW��>�b��Y�;{��J}?��.��,1i�� _��m���MA=�4< ��r��`xn��;?~W���F���g��;���T�R�C
|7@�������;?L�Ѕp�'��Á���ﳖՀ�w~w�v��l�.%�Z��Q�ٿ5��;�F�O�����?��a	I��?    ��0�G>r��T�~�h����Os��{�zN����F��r��u����q~1�?� �ڝ���?���q���I���Q�ڕw�)�_��23���_����U��_^'������l��\8�g�Ŝ���:��˝��W����U�Ӵ08���Ec��&�?r�1_��������`K���;�O�߱~�8-����#mJ!�䣿�+|��u�'��_�W>~ݙ����WV>��x���^=���S�r���f[�Z�������n��������A��J���_�p�'��a�K���c�I�%�b=���?�oz���a<���/Z�e���ߨNW�G���7�{�K�?���/��Xp��V6����A<_��v�y�ߏ���OO�|��O���&��_��>�qdK?��?J~/�kx6x����_��Z���V8Z+�_��g�u]�52l0A!��	Mb������ �����=�_�@���3�	Q���{y�%.��G��k�3v��;�lq�o0���.�l�U���#v��*��r�����ג�L^��~
���Z��g���g��_\�zˇռ5[��/�NL8�sÕ��,������r����߷�=!y뤆��C����{������5v��|�>4/���.l`{z�\��TST�'O��k�+>�rN�@����#n�����ͿLص���?�����'p�?���������_��������������������������%�x��Hy���v"1����ͨK�Y6��F"��X]B�<��xf']$�aJO#F�3���[#��x���*鞝8S���#� d��s]K�j?w�֑����|�������#4 �i���g��#ߡ�A�8���<��2��h�U�F���<?�'KK/8����tR�?��$"��>]�m��_* ��[Kf�FȒ�uR�LR��������	-�q�'!�������ס��q���%�m*#<h[����o�`PK$�P3~�|��r�����o��@D��2<���Q� �׮�2��j�E���5����y�����/�9�g��̡hB�_�p��l���3�F��K�P���X�1I����s��u�2	5vJ�C���29�I�2[���� 	�G�z�%o���)����7���IJ���T{c��u�����Egm�c������`�vG�=��S����c��e�v�7�dS�o]l���_qYc@c����Ǫ�]$b����R��UG�\��GDF!/e�b��'~��;�f�x��Y�V�G���,�H)�����w�����+,���2� q�4��)#*������ @���;@y������m��=��ŇG����� ������UJ%��#�˄�<���)�mIV�y�_#�x���F��(�-W)�&@f��
)�K��l�qOb��B�9��\������䞄�5ܠ��� s�����,L*�Z�4_�&g0r*cP�oc>�ޓhka*�L�����;�X�#)�	���$�h�m�&?��R\q��?�}@�dO��[�������<���6����,���5�)�{9��!6��_6HN+��ogyN>TXZ6���������F
�$��^�a��X�Ӌ�_�V���[�����߀=�ٜ��?u;�?�0V�韔γ��{lw���Op����9�kO]�Ȥ�O�Aj��]���w=`�8��yd���Ofڤ�?��x-��_E,�����]�`\������5(�������O���_�r�bp�f�t��L5�5(�,���=���F��:&�񦯩1�d�a�����r�� Y^��fB�a��V�.)dE>�@
���_)~��f<����f�h�{M����kDP�����,���@j�N�=��ݘ������Ū��OgW�𿥜��[=�Xs��4��#���dR��j�ʝ�Ӯv�d2��S���,kݫ�f���n��/ �p`�Q�O&��l������Q$�|3i�Z)N�,h�o=�̈́�<,��o�i[�|��#�Cy����̛�n% �v��9���ׄ8���3q��s�
�!1��.�<w.��ﺳD��BV+���0ɾ�����p�K���c'#f�]N��O&!~��Y����W�ۚ-{��ﴄ��=ߏh]� #���sT���)��������� 3 ���'��Y�?�{��6�~��[��J�9���X��#�ղ��p�?##@��?R�έ`c�����Z8�w������Ħ���}(J����)�٭���ߊF����?D?DF2
��O�v�V�j0$����uhkI��d��N�L��]��N�[	�m�M���<MK�;�T�6n���Nqj�}�J�eD�0�`��?(n�ԡ[	ｳv��f�0�W���[�������6g�wO%#�70A���@�E��o[�Q���v���U�JT���9�;d�J�[�J��I�����@@ �����{T��ȩ�9����lN�\��5�~�)����v=��yO�!�_��l�p���tr��q��������6�x����D/��}+�稡g��q��WZ�T 6���Ѻ:���S�P�Nd�Ќ�ѧk{?���Z(�\��#`�F^�����ʌv�I�h������sH�+����Ϟ�jX���������yS��R;�ە~֪��߮T�5����{I�ZJR�3my���n ��P�WH>�^���o�=�5���o�_������v�Ђ�,���n���N'�T�4h!����YT���1C�����N�A�����Q�MP�#������B^�����`=P��N0?+_�>L�D��$@9h�K�����+��{hn&��ݟ�S�]��pdƙ��<"���%�����O-��il�n���/�m/���TX�]ocT�*A��[keZ����C��$kS�eX�W��/�Oϭ4���r��҉���ņ���V��RX��|�4*ky���w��+� �W�_���6�:�R�/ڧ%���Ce(���X2]�'~�4,�;������v|w;	 ���'?�^ӧ�<�@̠��s��]yt◃;����w��<�����`(��|���[�0x�<����e�G�s�w~����7~
@�5[#��d��s�r��d��.eS��j%�X��?����B�ʄ��������S����&�����1� ��$��i/X��	i��"��Q�pu�Kj���	���=Xu����GJ��T&���?��/��C�/��������<��t�E@���DT�����Y f��֣������$�:��8���:�9o'��&e
��஽�\׵��a@������u�?N�߈�ٹ�w`?����-ZHG@������9� 7�#/VH5��v2[y�
-?��$>]���ϰ������^rݻ�IifĎxnQyo=(wp����}[G�~��Κ,���p:��E; 4���?���g���_��W5��=������������2��I
��_o-7��ޟ�����?T�U}}+�?0��#�]�<��?�5w+D�{~;����.�8��d��v�Ji7����*�eM����z����=?*��+����L�����?Иs�**�	X�|`�
�����`^+�����Ξ�����G���| ����c�}I�x��v��
cJzO5�Y���j���k������p�W=��ʗ��eE�����������ώ��s�F� �p��4�C��~U�%��r�ov�a;���C�}���ا�-P�gC���1>��]�v��:�P��֎���#�[e���e.��o'2���ZC.��X�)l�������T�H��d��E¯��ݸYԓ{��#5n�O)w���'���}^s��;�(p�'��=e9�w����� )Mx_���Q;����@��f������a���Ê�����!�w�j+^ݗ@��� �����g���zϐn'�T���s�_�e�����m� �	  !x �?L�{���B͋��Mk[�_`���d����y	��߶#ZE3�?+ ��ٝ+�&'��$�g��+���/���5D=���ĝ?�^~C���q�N���C��I��n�K������O����!H����=��U;�{�"�����fk����O�(��i4h����P�* řz>�ǰ�K�v"����6��˿�v	��v�ï���E�r�Nh%O��R�G�޿�pKD�:��@��p ���� �W>ZE�dY�`�~�aY�Y�0�h��=R�WJ���z�ꌥJ�T���? �Nb�g��:�b�ݒ��턙������Oi��q����$�����C����m�^(�����)7�i��fv���Z����6��:���]U {�<�gH�����W�\�s�_�Ϻ�-i�y;!/���J]���Ƕ���vR�R����a�ֻ�\yu.���f��3���̊zl�:UI��l�����`U��|�s�.��R珿���|+���;�5��{���t��?_�N�v�D�z�h��i�Ŧ�����6�`P�'-W �<�͟v-�0d+�6���N�l. �8�H��|���`E��:l�2٨�/X��Q���B4�*�����y�/?��HIV�d�p��ȃ]�]����خX9s�oi�^�W>
�(�@���'���M}�Q��Z�ֵt��Snk�u��V3Q�6A��\���[�w��l8tn�)����N�^�u�s���؏6���Ċ�
��,�N�&��G�}ѳS�� r�z孑�������p,A�z���l?Jܓ+�n������(����G|���ayc�4p�T'� �h����+�}����hs���N�����AB��O<�M�i��?A��R��g�`f�~6T�U<�q�=���eN�l���N��+���F�^g}|��s���q���N����T������ʯ<6S�R�;FDۜ�g��lKA�nt��V?����q�X��c��[����Y[���Y�Ś����3�d4R���H�~4�nA+��h����uT+�on��S�+��	8�Z���Q�i��[7�S��A�.q���;;1|�g�6�~��[ο�7�9-'�ڑ2�3�ٲ�{�G�|h7��g�~U��[?
<��k �p�w�.�4���"bW�+Q����u�@����g�gL���y z��I��
H�Μ����
�����|��n���l�{��7jKaU<�������$s�K���|;q/ ��72�C|�]�y���\�,Z���P���D��;'����ZW~F��Tz���z��o'ӟ]���T�|[��DbE(~hpA>�ۿ�N��D6�� +�6\�bW�.���'/��n'S`ᕺ �p��3K���t:�e6��_6�o�p]�W��P�J�_}���턚�n2�Ꮾ�>!��ɴ��^+p w�`�</���?� i���z�'��E�Ӿ\����v��];<����wN~�i�v�T�N�� �Q���;m�S?�|\���q���:"�r�?XE�:"R�}^y��$n�������������(�U(�QS9h��b� !6{�� ���a����L1;`��yr�����Pz��}���c� #/4����M�\�z;�j�+�X;�?�ᔫ���A��5&�����l�\�P������rR�<������C�m��.:��)3��,yVZ]�~o?��e����u��5u�J����_`������r�W��n����
/ �B��� |���+�sn�
�9��l�b�|�����*w~�X�f�c��x�����M�Aj7���sx��S���\����Nq)�� ���?w�����
1��Y�a���]�ˮ�뤾������%�A0���ց�\���FF=�����5�����}`q�%f��o��Z#t�L�?����k~���Q�/��|�~3�NX� |R�X#Jw���8\��tuq�tA ��C7~=�hY�����=�w��l��-搸��G�X��#S��������_�	�����`8�m�w����?�1�,mJ�?�~��O��� �"��;�--�.�f�K��Z���������W��G.c����FOG���V��ůe[�ҹ�KkV[pc��Ieϼ�J���`P����w?��]����ݟ�󋭈�)���?�}�%@E� �?[�~��uU��M>뷧��!
���������܋����|<j��v��|��>�\��ԔlEX���ȝ.K���`\�v��E�����a��sF� ��m�}�}��&IS�g������vXҘ��I88�|�kMM�s��v�m����F[]�������{�c��� �1ꍿ�z9s�۾�n�������O�����������������/�o�����bR�      b     x�m�KkA��3���@BV�븞4��(H�K;8��I��A����*!!�f�UUf��1P�8�9���ޛm@��v�8��K��f͞�+zG�q|zV�##/��p��P�#�#S��o�0S�`6�G�GzS�*�ۦ�S�R�9$тk��Z��N�xTGD�&�.eff�hł��pL�Щ+m���>�yj���5�6	=�$O~���ta�uQ���;��Uj�T<KϾs�e���?�|M��XKO�x��Е�>��FL!$�+}���~Z�      c   �   x�%��N�0�ϻO�O u�L�#��e�l��6�!o���F��>Mv�B6E�P�¸~t���gz&ˡc?���{j�On�:�Yp��-�S�4JH���݄;8���=4�.�� �5���*C�E`V`c�eN2����i�K^C��++4h�xeE�-��81~/<��Ç�*���*�ձ�Ͼwm�8{n�bO��͡h�������k�ժ<��>!�?�lV�      d      x�3�t��O�2���/Q 3c���� G��      e   �   x�U�K
�@D�]��$w�W���ɦ4���#�L�>��,���X�k�W��ոJ��)�S/o<�ҡ����8Y��)*e�N8s���U�2�G�)�`���-��¬q;ʌ�&vo@�ּ�U�O���
���� 5�      f   ?  x�e�ے�0�����tȉ�e`J;�R����F� o��:	,o_�]X��&3���%��}�Ϣ�y$Ҋ%j��q�r/{��h>����XM�{�!��~OVdX��7���J1E�� ]�BxcXQUFNl �<�$+Kcԃ���ֲ3���K�/s8����x�r|��G��F��U�ɞ�>yS�
�9M���Cx1Jѵ�G0��v׉?�5*�u���ZSU�<@FT����9}q�������`?�w{A��_�?-R<�}�#H�[.�2�o�w9�5�_z�	�o�t]a��7��F�R6�ؠޡ��1,I�Z�'��]�q�"3���HU���l/��k[�R�=Mٝ��.���R��z���SPG�B�IdM%��|sK$f\�+V�ևÂS�'���?Mwl���v�SR�޹�%S�p�I�%�\/
n�����=�	ay4�ٚ��ď`���t���kx��FC��"�gG�,�<cM�<o�����a��³~9�+RSJ�O`�=���^#���܇�~�p�kJ�~΍�=����r9�n^�Q��~�����7���j�<      g      x������ � �      h   �   x�}�1�0E��9wh����A,,n�6iH�B����R� �����R�,�@�)h[zh�I=�3�?
:�d�q� ���l,&��^x�8R�(�IPL0��ߒ���Ѧ*?;��5�߄y�4&c;�G^2c�΃<�՗J�w��b#��g� �j5�g2\v �+ab�      i      x��}�r\G��3�+�qڌM�}��X%������+1��"���2��̷̗͉����E	�����y�r��G����ݛ�o��v�����ݣ������.._H���z�����������]\�n??��Y-�U����3�������q�C�}(!yn�WL��Y�ؚ��5W�s%E��b]>rOr��&�)B�$Y���.W�fmJ$/QK��Q˹�5�A�䬯�ɥ�٨�<�lL*Zh��������*K�䗾���c�7������ݛ�\����v������eG�tZ��������?�/�w��j�����������Óu��k��u	�Da���]{�X�P�y�s�"֤�H�UH�9�,Et*�&WQ0��1��2&%q��3or^�u��IΥ��8'RM.Y��2���y�����m�Ry	�F+H��\���UaY*_��E�u�"l�M~��hUں����OI�/�圿|w��}�\���S��{�7�qa��;��u��?�2�WVٓ1���R��,�ɗʸ�{�	�̲�&�B�'��<F�c1����%�2�a�_z�^1�:�_z�Io͞9�z�6�����~�G����u�t<�����o�&���m��ϻ���"�8#��/��7�O�领^b���3��K�#Д"�w��3�I�J�޴��X,ə�����59<&��a�������@q����Χ��~<|~��w��|x������x�Am�-ŀ]��Z��q�z��e�n��Yq�J���M�as�W�H(p�m{o�E�lq���5X����"���LӞX*&T���,x,E�8�
�"'C�����?=R�����x�^`C7������F�a9��6��D����~�P�{��l�";��0�"���b��#wy������� �tGF;[���&/��FJ<^9S��4LC1�ܥ�⺧���T�w�����ۯ��.�o��7��ow���~+�5�9(EK�2ō�0H�:ձ��������WAxm�8�T���K�"u@y\/����
���I�椸�+&j���fׅqQ3����_z��b��ͯ��=����]K��w��,rל���A�l̋C�������"��R�@]5:�:T�R梍����T���+����]>�s��4� sw9�Ko��o�A���[<V�"��{�+�C̆���(v��V{�}��[���U�����~�XN�`����Ջ�(����F �HQ9'��Q���pb�m_�-�I%G�T����:}�z*V���t�늹��Sn�iW��[������r}�|hi���z� ����2D:��ǥ�s���U4����\$���Ī��+����A"�R�9Yh =�r��R;fΕ�C����{ο����z[9����o���gنg���#{-_��ku��N�qE�p^rD�6��|�~P\V���U�Ђ� �)aHnCR�E�FHD7������ļ�F�4SO�1'<��y$�o�W��=��{�m��~�?��#���ŋzE�x1ֱ�,��EIr����,��5Ú@ߦ^���i�0�K�^�91���
lh��4��~�V�a����(�"�Δ�
"`�J{��2����<��$8C����v���]�����t������/p�JF�WƁ
-��: ͙#��b:�{��г!� i@ؚҀ���F|M!'�E	e	c������=K�
����/=���
ο�_]�>N�g�<c�Cq;��z-8OphY;�%�r��t�P�9��t��qJ$$G�(޺�T��� ��0�:���y}n��J#�v�u��Mq����Ϳ�/��'D�Sec����璧o^���0���odܚ��B�fTݓ݌��P��� Ϫ[��\)C1p8ီG��E&9只c��A�����u��-���m��~����@��0���ƕ���.���r����
���X��ki6B?��z;it��F'{��*q)��#u$��$�¨�#�C'J��A��4�ˑ����I�e����o]Y>f=?.�/+c<���9O�1��VqF	���\9[�t�VB�	�I��G�9C�Ц5\�
8�*䐫���F��19����9X��7ݢ.=��|������n&�}��H������eʓ�q#^\��#:$��D������Bh�!腕V���qȓT��I~BO�Pb��\��5i�R��n����:/<H"ɽ���땰.�2%���S��1�J贂��
6iW�Q���z�U�v1���̅���p^H���Ǻ�RҞ*S,�ɗ�b&���e3^ΗUȞ9�U�˹����V����x���n9�����/7��x|��&���ŭ��r�'�)i�մ��Pa!z��#X��hEh��I�#���×ڙ]D8 ��b�ώ{>�+�ٲ��..<�8{���[����Q^������o��e������L_W�d��rx��a:��;PS0y�.�-v�,�<�^�F1
H�H���'۠Mp�*zv<���kf,���v�Y('s��0�pdZ8$v=�3�$e"�?��V���(�{ą��,�\������9��q���n� �-��h���U�n*(�-2�MB�y�L�� �+g1��{�u#W��Zhͬ��X[�'M<&�s`�$����ŷ�Y3�f�w?�|X>���Wxz�Y|����kA��;��*�9F[��*xB��u�YڊRq|���boS~b��Rׄ�6��bkkEy�'�C ��W;�z2XN�����ŉ�>,[��X���N�oF��3-I�WR;�Wc���
#� �[��*�x�ZSJ�B� 5�\~�#<��
\C��&�;�P��]ғt$������گ�?~=��$���w;���NE���A���*��� *8�.����&燫�` �j��������, �z��+,#�N�ଡ଼ü�T���������~9���\P47�4 �+�82+����10� �����ȴbu%�#Pz%���SL�k�GpG�֑'��%���$��6
`�\9?�?�y6��*���-3�~��s$����sq갞��>����*x��+������K��U���乚pdT NR9�- �	`�ԤEf�"Uܱ�#H�M��q�,��"Fd*FX@���b6X�.j<?9�D4k��h����jf3{,�l�\OI����:y�,�fc����o�k�|��,���~���	�����{'�����ͦ�{��E�1�����I{_��=%1��VW�e	����4#�E��L�!@m�	�F����n�*I1�� T
`,H	�[�������iD�/L >c�>f��NK%J�$��C�:��D�@�����AY���ax:&Lr"HTS��m$���m�a����_v�������O�1�	�|����������﷟O)���)/	x�&�+�S!�J� �\��g����̩K��H�bf� �1"2�s�m�e�?\�$��I~��[ŭm�_����͇��	+���RF>�k�Ԫ����32�d #����	f�OY�y����+fʍ���l�e�/�g� �A��i����;u��8�_�H_�Z��k��e�	�W��Wh��V���_iK�<�B$מ@١��MB@_�HSt�rcr��R��\)1W��*\��E "N�K��*n�P�v�xۦ��3$�w�ݰ�>�2tAE�2�x�ВG~	:�
<,1����Hc���5ioc^`�i4�@�"�^�և��E�{A"ռ?RV��*I~��ũ���|�j�\����Kѳ�/.���(�z�WZaD�C:��R��@Z����6R�!ybpF�P�f'��dQ��3hm9�gY"�A��n��;k
f'�
����_z��bW���'�����bG�(o����cn��`�d&���P�� ��8m�O�Z��p8W +V�>�ɳ��Nr ��6':�^��Pݡ'���(�S�`lbd��o[U�x���1�H�p���    x6@���/}�va���O(��J�o<����~	�n��|q�9��^����8Ћ��Q\hU�䋎Cq%�ʲ��'��`M �y� �+	!��(� �Z��2Hd��u$�m|#;�&�7@8Cs���^��>�PE�J�1'(Y���>G���\lƋF�WÌ�'�7y=y����.�������͇ۧ�u�w;u�����^[��FH�V6N%p���US�U��*� �e�p�K-%>>�9�p'j���*���F��{��[ŝ����?>�7'ŵ"��O���@��(N:�J�1�L����K(�P��Na&�2�� �k�p(V�֗8�9�ғ<�ȍMu�=���AH�#.<����d�z2����5�v�m���
��Ŝ�Z�䅊����h?�ZI\�H��Vdn�c z;(��uN#����fX,��7P�.W��a^�m������2~lVG�MPt�fY����$�ŐW3D�G����8�G���^,|���
��Hx��,�h�(*I j*�����(����TX���=���ֻǕi��>?BV�~�*[;K*X�������S�@y��Z�����r�H�w�zXn�����n���������r ����E:��0���$#�����X���
�]�J�y%�E",�D4"����r���9 9Km���� u�W�d
шK��D:���������|^v?�pR���q��*�x�[x���e\�����A�c/��3S���@�����0`PS"��Á��{�����4P��O೦�̠<Eg��c�`YR�B;N#�<������z�y�C�q���I)^<%4j�`��g�
�^Ê�
�M��� �$�1�!�ɀa\@��*m�(�%��{;s�5/R����� ��8+%�H)�.����j=�N��$���J�I���j���7�C����_������N׿�ߴ�v�źn-?]��	��zy��Q$��%�����n�9�zH��*�1�ڦ��g�PBr�Sav�e.P��@��շ��f��O�),L:����m��z�L?\�O�>T,Y$���T���?p%�_��C�8Y�ԥ�l�l�@g* �qE���mڔo�k2�uVj�.��0�@� �r��~���vs�)�Y	��`E��,omS9���"��Ӕ �����E�����܇(% ڔC�M cOܖ�lɳ`�p6f$ɷ#!�e�+ �#y�mc�Ǽ~���s���QN�o����n�OͰV��͇��}��]�x\�\�>`��m�����̑v��P����jv��� ���ܮr�>Jm"�Zyuz�������F��A�g9��W�pM<����*5��6� qMy��(�cS�Z��ۭ)g<�B�/@���,'�F�,Fc�7]�BUv�=x?r��aA%��˕'UelV�S�j�dQ�E?\0��N"8�8y��oC݆弇ݭ��)h�/uFh�F=_��D?��A@
ד���,	e�ui[hX�_k���	$��� �е$���UԵ�T#K�
dQ� �s�V�( �j�Q�ѿRmS���cer>72ԓ��P�]�
�k�3�����&�=�HʕiHy�B,���J�ڌ3=.%�s��@,_"y���K���%�nøӀ�����z�?�=6������~�3���/s�Y�z��Ai���
k��u�s�t���Qcn��ע���M*j�E�N�n�z�ۮ��8ū�B �Ѽ��o��=�O����]�<�x��w�/ן{0��g&�x�nw^5���A�Z���X�
Sbcc�o;]:!yv��*J��c)�$s��Rfo">�-H H]��z/�+3P۳�LC;ͩ>��C�mx/t��/��{;"�z�{��Z�BC����$�G�%�B�m&َ6m��d���-�<t4ֺ���FI��.G ��ճ�a/=��B��5���~���������F�� �i���:�[�H� A:X�#��u�oɰ��v2��qpDJ61+��$�S �0�Q቉&7ȅ�����a�1�_z>���[��o���e'���������u�oo-|�\�sS�T'۱s�=z�d��W����L9������i{5H��Tm+,7y+�Zݔ�������d����r����t��S\��S���d�_z��w7�����w�����u�i7:j߿�=F�;��=95Ӊ�/h�7�.v=�*A���"��bX�R�MY��͞�ꕚR��x��v����AH� ���^�Z�]hP\����YE�!D7v}?�~'�.M�k����nyzp�ͻ�A�)�����E�AUe�����x�&��Ʀ�!�s�v���m�;�vj(�6�R����d+�v9�p7��Tns�Y-��n��dL hz�����TCkwi�34�D_W�\��n;�����t�p��Zc2O�N��_QS5y�1[���["GB�����'(۶���DZ�-#?��v���z S�� ���Zc�_�9�����y��`lq{~}Nv�����_o?�sy�+��_�o�ַ��`����/���asO$T�q��� ��(��<�L�j��)Gp�@ራ�O�D�K1;ԹO�a�Q�~����܈(��a���-�`���y:�s��\��m�˷\��l0��0�3�B:m*�9B-�����`K�6��P�U�m�D�U"+���ܾD�7�H�2�l8Ir�Т7S>i�f����5�Y'DǬ��V́���B�u��jE�녓A���@����JU��^ ,!T�Yצk,�ۜg,XUmx�$����qX��"���<�t���O˟˟�+�^�Ix�/���u��KB����C��e�^�h<�?G��Ғ�d��tkV\��D�\�T$G"l��<��47Z���S+��iӟ�bɭ*�q��V�pS�?��AHPF.Ez�󐈠ERm�8��7`��ۓ�E<XIS,=?q�rMlBac�X܃��������; �iL���9�d��~���Q������aA���=^�bbf��2qYX@�e$��Ѵ�_f� !�m�H��>[���iw\ ��S
�ٖ�e��c16���D�N���Q#A����H?�X���!���9$�����]�����n��i�8��-��n��/�o��s���K��W��O�헟��\����B�;vs�<;a��t�G��s�Jn�a�!um�b��v�z5;m=��e�J9���C�)��N�� �����l$b��'
�<��<��N;��w��/H��� e��~��9y
.�m{G�;~�t'�v�8�<�#2@���_�߶r���7�Q���x��no��G'>j�^j?����#�����C�V���f�bE�Y���KxHjt%+𗹇�ۂd EMT�,>���7l�G�[Kw��CXQ2I%�K����ݩ�i���ՠ����������[@��w�.<�(�%׈�V�W)V	�o���0�*Uն�R��ϜD��5��<`s��6�FgJ�S�x�r�T�O�5+�L�r����$�ۙ�<X/��k���	[����o��^�L�9nP�!h}�����)(�/��c��+x�}j�E%��4Ӷ�x�ʤ�X<VAA�8��gr�Wd��J��(P��3�L������4	���A�f���rf��J]l��F$+��$;���٧�e�T���k�Xº�T	!l��S �� t�1')��t�c��	x��|=&EDǋ�e�-��*:�Hg��k���u���m�ؐ�ئ�����s?�;A[�|jĉ�;�312[�Y��=� �4]Z���k;9���z��I�����՝�ÆP�őrԜ��
�W���4�d�Q��FS>�a�QG)��C񡴳�\ց�*�q��HQ�OW��]��Մ���]_`� Da=�
 	��&�.��f@¨Ӵ����fy���[���p�#)��vƽ0�N�5�	>fnUi�o
�Q&(= `�ه6��gJ�='H%���#�tkb��=�M��A����H�[�# _  #7�3oZR�%�Л`�9P�W�~�H(�(��d}-E���
[��=�������=UʒZ`=��(�A���~��(J�vJ�*�O��<����e�7��?/W���z�T�^�)�5��c�Js?�j�^�o{H��o�2��F��b�1�u�dctZsu�5�'EH��ӜE?BV�2�i1""'PIrd&�ۆ�!o�^������l9��2�!�����$������ ���Gb���35������6����f�~�t8�Of���Ӷ��t��'4�v*m�S*���3
���T�Y����!�a�x�ɽh�e��9����&*Z�"mh�N���h�kGE�K�������|�:;�r��;�����4"�:{�r��3�:�(V�:Ze��m�bN��0^Wy/�F����!���/���<�lh6q ���lX'��eLq��sN�FZ���z�^Q��~ߐ_�~��FZ8{:&��r��X�8���������½��9c�"@��:��@ o�C�*��mZ����eR���Be I;��l��Ƭ�GD���T����������Q�F�����[��.���O���_o?�=(����!瑘�}�ނ���o�1���J��M���0H m������0Vǹۻ���LBJ�XrÅd��v�%.�l����7z;��s�s�:���!��ȼ�X{1���[W0�L}��{,rTR'Y>��*��V*F���K����v�3����_s�+�.L�C�ш5�C�!;F�p��XX6�4���O7>����۬�:6��v?���?Z��(�Wn毶���r�8^��R��9�c���"�i��y(�Mt�=|���0�| ����s�B�Ks����,�B���/=3; voֲն-6`��ˡ����L�lŢ5�Ԋ�|� ���2�B/Uf�F��z����:ȽG�����Ύ�D� �j�y`.o�D������-�ax?����0:�f�V�(�1�wZ��%5D��$�����x�|?���}Ư�T�o0ǎ��:"�%����
���`�l�oXgz?�繕��BE+YI�����[�����v�����lh'      j      x������ � �      k   W   x�s��+I�KW0T�L�r�r�8��c�d8�D�3�˽4��D�#���3��75'�$�_�3�1r�ac '�KW83�b���� W��      l      x������ � �      m   :   x�s�K�NT.�I�M��L�r��R2��I\P)5�`2WHj^i������� '��      o   8   x�KL���S@���F&)i�&ff)��i)F�i��F�I���Ii�@5\1z\\\ �/      p      x������ � �      q       x�3�N��J��2�2|S���91z\\\ �
�      r      x��\�vG�}����z^4>�/~�Ջd�FR�9}N��D�DS4 �n��w̏���(XhP�M������qoD�%��_t��?�D�Lx)	g�R#� VP�"sN���N[����na^Ni��Nu�"d�]�S��	J)���Q��a7IϬ�6�b?���.Y/�����fz7o7��_>���������q�ٮ��o���^.��ۂ�H��`�����\�-�|G.�N�!9�5�WϒeZ9nr��;�ˬ�vN2�)��)vm��BX��H�)it�3�92��$	cѷ�[�zG-������n9���j��?7{�0���o��ϛђiB��.��T|f/��k��횃I��&,
ܳ��y��i�Ԫ|����OF8"�=�=Il�������gf����ʹ����͇�����%��}�!%�C�"E��QIu}�A���^Ԙ�G"��r!p�h5g�d�F4���u�;��X��8?E6%�l�~n��!FoJ�m�����q�4����_7�p�ռ��(5��5��Vry�/Ґ>#-w���i,C{��T.�s�c6&�fg2Y�ŧ���A䜆=$�iԌ�v��J$�B
��	�M\i��ϭ_CJ,^n��?N~�~�4�������P��r�)�7�{�q��>��=���	���+�c��T�ry" �4�m���`bH�Q�d�_DI��ĳH��O��֯�$�Vw�n�����r}��"��M��_���E�8bT}��A��##S��͘�1���R�&�u��@�n�9zΐ9�ٝ�2Ma���*#՚�˄��u��&Zi�n��'�������j
��OS�������f. 7qѼĈ�'���_���h���Y��]%Gъ�K#tC���w��.p�$���5������&�@�T���c�(i��ު��95���������_����v�7��@kx�?�4����ͷ��y��y}]]Ź��D@�Oρ%ķ�;�Rg'�^)\;�;�*%���ʝ\`��S��#J	��\=���-O'fb�A�~n��)�x����>�^T�Z�����0<��/�˾�㊫|J��e.3 ��i4�� '\j$8S���J�ڃ�D	/h��"5��RYi;RLPT��S���,�t�p�"�.��b5�Ϭ_��/¼~ܬk
6׽[�nw�_�����qaT=&�\��:���ve��R����0���@a�1�`<���#��aw�&�p�ٙ���Y;�;�3����/�A�x���f;�|s?�8^���j{װIR�Z'�Bi��{���x�)�b�koHJ�x��nL�	e�8���0���C�����C��k�%�ˈ ��G�ό�5Bέ_�$o7(m�WSZ�̫���j����	[F9�;=8l�MS8��`*�Dɶ�<��#h�V93٠ګ��>m�Ah*��=����"�hw��[�zL/������Q����S���� %Ns������]��2��ȭ@¨�X�cvd�$����x|/�h)<R1��Jdإ'N@R>}���+@������<������+�#��}��j�����>��|��=tY�$q��=���	��U��!f��w��Ap�kUP+4�t�Hn��BQk�'M=�M� �4�䵪wn��!!�����W�O������\J�vy����z*^:�R�����(�̿���B3��Y4�PRD 0П) ���g`�N�9�R����m��]�[���e��3"��aؿ 0�mJ(A��]�I�(�B=���U��ů��f�:V3o��y�e�{����˻I�w���uh��%��_hp�����z��D]��t٣�SCS�^��ap����s���&;B�(@�������86���jE=�~q�DEܽ�m'�8��F�N�k^��v�yy�����L���߿���uk�p�PGv���Y��I�JC@��/��XS���������[R\>�C0���0�षO2�!1����2����,�h���^g�/^#f�W�ߏ���Ģ�GU\o&1��ݮ���*�A(��Z�kN�Wϗ">S����II���M�ʦ0��G�E(�_�sw)����@5�_]{|��������$|�*U��[�">[�%����INZ��P"f4���A~yN%��փ4�>��)���N�A:!Gl���-��D�:�T��!���P��i������Dy���FW�;�~$��e���[}X�^ ���7�!�Z}��_��eJ���=x2�2k*d-T&�%tq�L�lA���x��6����p�� }��0��P"n?6�������'����X�f�[v����ws)~`��u�%$�=�\
�ԓ�2Ow!$��>9 :�[K�<JT4ۋ=d(+�R}��"��T"��P'͞)�4 t���-����~n��#ڛ��f��λ�������B�t��O��CHUTB<�����^~��k#}Ѥ�=bEm[�o\xNeQ�;���# CZ%�]fIto2u਌%WQ~�:hc�(�������ֹ����"l>~\N?mv�KP��׽9�w�ǚ?��:W�D#�����ʿ��M.ە2-��J'M��*q*��n'"��zjZے�A��k��9��4{�^��G��D̴�[���(��f���_W������i���]���r�����;2�T#�ն¥�OB�P�9�/L<�DL@ݯ]*��I��,)Ͱ���6�@̙�1� ���1堆�!�}	?��n�ڥb�W��f�a�,�����CA(�sܜ(�n��0�"ϭ��(8�F&��& �TL���rn�3f�uy���N�3j�f�ٟ�������?z�f� 6�y�J?���OB 1ͷi�e��A�A�Y=���� ����L��\�Kw�0��J{�dK6���2<`�qi��ڗ����zD���ϭ_e�Z�WL�Iz��c#W��da�G��
��?�$6���f���(�j�2�5�3�G�8H1�@�����*x�J!�b^����K��~n����`������9%��ǀ�1%O��x.�o�Ǵ�fi���_�p#8�R-�"{�(��$�˗2�N#�ؐ(�xvz��=�$`�;`�]0O�������H�)ϡ�5"��n�Q%��V�B��$��~}J.g�5������/Q�≾���ˇ�v^��~��v/�_!)W��j=��<l���O�s�~�I��.k](��C��qd3g�|uQ�����a�- �
Å����=ov</��d�Ι��fyjR����N�]�\^�+(���t��"r���n7�W��z?�c���^\�}*.������
i��n��c����`j�R��5!UƊ��6���!W�����7��$�@�l�+���%�;*0��+�5!έ_�b��|�J�ٖ�ϯ��=~���X��(ƎdeoP�K�P�!�՘�����h���t�],(�+��6�0=H��mD�#�m㑚u��%��a�}�������mɶ���盳�*2�l�@���1R��s�9�ڻHl��� �%�zyx�� �d�K�p_�gϫ? T���[W;��1�:VF���C�!�̤᭙sf��+�x�&�]����k����z�~��e��m^'\Ԋ
���:�>Ĝ�cj�d
Pm%�ʁ$#���1�:��4�?8���ҩnv�H|�az�s�WĒ]_�͟
ܿ[}~��\��˲�6p���E��Sְc}}T�2lGZ)P�S�;�@jڰ���\1�J��8bӀ�
�2�W #P�ԇP�� ����!�	,��s��P"�S��۫��=4%�X���;�����t�O�C��=;�Rfp�E}���0���}Q�Z	��o3x�r������
Վj�NiO��ϭ_Y]�Yݽ߭�*���}%����pC{�T�ҳ��(^ڋ�t�DL��EeMQ���029Pt�Fh˹��!q���TbQ��J'��-Cu�
�+խ}�֯β�W��WȦ7�����(J`����)Z��6�� ;
  �3��0��eo�M�� @ Һ��6��l�c�G.�nl(A���55�{���:��U�����+�r.Sʖ@�ϭ_]�˞��(���Z[�J/*M=���!���A5]֝���a���G�ԁ5�����N�6{ L9�Ag�v��[I&Ƶ٫&�x��+ɶu����_Ȣ_�;�����>�)~�(��\<nW�!�����L�3���A�1ϒI�%(S��56s��n����Ai	R��=ͅ*��t��ڕ�#T��n�������֯N�^��G� Q�$���c6��K��h.�,��;_���@�Ŷ�:x	7�蚝K>�P��iEN�j��3�)Ie��M6	���|��?���������o>.�_V7�������^"��/S�i����l�,*�e�1}P"�&�\v�g)�ʍ�=Z�T�qP���N���2iܜV�ԝ0�8*A@��[�7Q+U��[�:�.�
���l��fy;oׅ}?<�gw�_6��F�(�j/APJ��Ƞ�S�� 0԰" *vO�`�*?����b����"=Sf�U�!����b?�~u�^��������z�vC�U�;��EȬ�O{��gn�.������v��y��ȉf�1�J�{,�=!XUl�`୦���0e��4*�@I�l��hM5O8+yU��֯t��B?o:�^��_��zs�0vz;}VsD��cy�c�#��7]�(�R�=�q�s>�t�OJ H����s�?�?�U��a�.ɹ���.�f=?@�_���o����l���}Xn�Uw�O�j�F�1a�T�gX��c��4ekD�Z�f��9�G(�~ (Kΐ�5�ꎪ�[�kv`hV�%Վ�ԫ�$��r렔w�Z������Z�4��w����]����	��c�#߈�rJ�Y[a��4Nr-�C�[J�;)�����e�	�{ �@��ò��,��:��=g����&)�\H\F�S�<��k��4�0v�	�gp�
��g��2J�x9�c������n�v��U���>��v��	�V#] ����BO��)I�;�ǎ�hR6nr��egU�^$�ǎ�V�X��]���x�pA�ƴYf<s�y���U<�z����@P|�w�"�QȌf'�nⰽ���ex[
�.��L@hZ'	�9FR'���މ�;lȮl��G�2�"�mv(��%\�86�r6]rf���8�m���C¾\�̷��ev�N.�-���O��އ�('�����X^�g��d>4�gߦ�$m�0K�U&=I�lu��d�{��~3E��?e��N�,[O�8٠`T��
�֯�Op�??N�.��u�?ac� 1�OA:�����v�5�֍͙��p��*�X�����	�@c
��r�I��8^�Tj;��P�����c %q��W�%�7qn-����6�s̜������W?�E�?��om3�]�7��S3kʔR�BNд�K���*��� |`2$L釔r���d?
�R���ͮ=j�I��STa^!�E) �^4��B� �h?�~�if�fw�|��o�>�!���l���Z��P��!��փ�]��O��oI�4AD۶���U���(5i�ɹC�5Q9SD�
��_@L�a�:��"�9�����+3A@M���~�zw�k��*��B9�ҩ-Z�t`�m`薦��Hx� �&�~�f��U{�X��@L}�O��9ΣL���Thz��-A��$lm�o�_��,�-�9�O�f��vy���ӗ�^l���m}�i�����=^��i�>\غr�⌌7E��y�!X��ƂV�!��"�`Q�4���b�/;Q^�k�
�(����{	W
��jb����q��Z/�L��d���j��������,��d�;[��<�1Q�?F��#&)jTP�7;⢼إ��ұ �7�{���W�x,��E�{��F|8��
1f����_��Xc�ٽ�� lu0�9[^�����si�5D[��T���������ӫ��mZ6n�w߿Y�>�P6]�����Ț_�q�%Z
h�����-s!�����"�������h���X��e9�JCx����}0f�(�\<�R �Y�X3�PB��J�I�x�kU^`�wt����f?w�U��Ex9��ۯĞ�/��'�£�k^��ȉ�.T#�W�A��gr7�A�(_yC6:�G���)i���������//�\�8�S���k��,���s������Tn/�~,�J��ܙ_pDMN�+;�8��Uu��R�@Q��J!-�k-ͥ������+W����I ���.5Ҙ6�Z��a��'��x�g֯�E.��eQr��ǚ���X�O$0K_��ӑ�_(-~$�,����+G.V�Hs/��I�-;��=��};�p�`��y���ӸoĖE���)oɏW�R�ok!1��>0�1�����a/84�:ȗ���t�~���2~0�+~�ӸQ�������O�\��V�W�G���ѻ'��oR:�J�)CL����7��_A�������4?\�6��^v��6){Z�15�`�N�F!gZS ����?^����bw{��x}��
�+~�u� �������~�����w�}��8V�      s   o   x�=�;
1���U���T�B���$W����X�{��s�vUm���fv�]�ۉ/fU������9Ԃ�]�ݗO�Fr��\[�&l�SP�<2���>3ջ� �& ~B�$�      t      x������ � �      u   �  x�}V�r�@</_����8&��J\�RY��r�֖�e.���A�Ay&\�fz{zf����m�]����b|2%����T�����ڥ�#_����Jw��R\�zx�\�kiUX�1����/��^c��Y��ʂ>�EX2gR +Z�k�mh�U]�oę���M�KZ���[Z�B����9�-ދ���4��߸`�t�j���~�aҵ_�C�K� .��dg�'�CA��~J/V]��&6�|=�=�!cF���c�LI:�2�_Cs�6{>��/�m�����G\3M��+f�+6�LSq�3	JAmO'
{��æL�q�夼_��T��7�#��`#~�\嗏(���dV ��]��������Y03���h:O�m��э�/�M7�l�WN�Y��]@�a҄Q6s���ᱎ�}��N�f�>yf<$���^��z��C�^�OaA�Ɋ�o�����4���t7���&u�>�^W������'�v�����0�r�Մ�@G�2�	�S�p;���l?9�;zr^qq��Z��u�����f�bj���nI��!�N���K�nq�L�:=�g��3�=�U����؎	�Ķ����r�J
{z-h��}z��W�%��=ށ�q_��GU�����U��D�� �s�aM��Uo�]l�z�88�:0����[qWթٴ�/%����6���K�e� �:�      v      x��[�rG�}����<vDۓ��Y���"��$�,
���5����\Du	��M�����Sw9��DXo����b�v���f?}�.7�sX�����������l����7�Û���6����7�]Ji������od�N��!;F��V���N%�T��g�X2�Kƛ��b�Y[M�=q\���{��9�Y�3o��3�����VkR￰��������G���f��|.��jz�������ͪ>��� �&<5�mc��r��I��R}�;!Y
�А\�����6��*{��Ş<�{6�o�QA:�|�����+0�<ٜ�۳y8�/ow����U��54���y3�6x ���d.�\L��ۂ�J���Q2�5��b[Y8J<P`إ"�꠭kv!��,[��-�`B�%���p�	�]�qad�X��49I��@���J��^=��js��J�T�Vհ"�2x���{�z�b"tz�+���I ��1<Ir�=��DjYБ��S�5u}�Qm�P�b�B��w �?D��$��)Fr8�?�$%E�~a�
�����xû�������ü����ټ��ݭ�b'!alH�/Is����hT"���J:��vŽu2J��)i��6;g@�3B�oG������� �P;�~EB��$�C�������$Ī�k�������Ώ��v�A��P&Y�e�	��3uL��=�V4;��	��v�Sش�͎�çe��Ԕ��
Ygܟ
xJTH�;�~E��(	'���m����)�/6o����sS��LK">�N��,���':�̵��đ�H��L.��Y���;��]
���0�$"1#g�ܶLb�B�~ϙ��@7���F�_���oFJ)�.����n�~B��~F�y��M� 'a!92�Ϫc0һ��\�8�*ˇ�$��<�W͞9E�n�L���Z�MZ�]w�u�K5���ZR���b�h��>���oE���<o�s�i��u��q���"%:t�KF�w>���Z�Dx����
i�K�u��֯x0��l�z3=��m��ɡ�\��W�v�:�c��'�-�y7���.���8�kO&&�2��ugx��\v�م">��Y=	i$,{	�Յ��QcL
���L��MD�4���Q����Ak�(���� ��!� ��3)N�|I^:&*Gy�(�K�F7(��[��lv.���v���(�Į:X4A�R���QyS<&p_ؗ֯0H��{T�������vs�j�Z��ؚ��[dL7
@��I�W��j��l��^B-����E�j6tAeE4B{-����fC�T#*c)��C�~i�
�*~���b���������Q�(��Ùjy��/�ނ���ǆ��(�=�"�Y)�p��a�*�I����J�����	J��a.Y .,XHM8�+�l9�I{, ��M�~i�
�</v�vS�*_M��i�s+8Go)���|1�=1'Rg��_�a�=M��-чa砥R*@�^���ب��5X#��7��6r(��(���:l�_Z��a����L?o��J��T���J�Wr��͟�������	@�7N!>�Z�D�����&��Z���]��v�|8W5-�J0�_߱��9����~A�D~�h�X����|������H�D�@�ۤU�
d��J�$EɣGZl99�h�a��*dYors`�	v����
a��R��a��D"��v7YZ��"
Cs�_�P����"�ieG����|9`1�y�"3�]�E�uD�3�L�	� MTj�$	W�\h�����@���9���f�\B��q=n�P��o�.K�W
5{�O��;��z��zy8�L��wy�S���~��4}�x~���Hq��\'������uZ�DF9�.�ǻ��%j.���=
�̖�I�t�$�3�
��4*.F@���="ט�Ӱ+�G1$$��b�HP�j<_Ia1��v���W|�=�"� ���tO�{p+e����#6`s�$���t�o�!���g�8Ŝ]��.ـh�v�..�c���a���Vi�,� |�!,�_��������&���z$ȝ�AT����o�<M���q�) ,�톝�K���T����^�:��}i�
���'�ռ�_�>tr�S�}��!�F0j�^�b62Ա��w_?�}��=�a�D�E���g�K�>�" ��]����u��vU��7`���AH%A�z�c�pw���51���L��A�B�1��M�X0RQ�,*Q�Q�Qz�	�#��C�PVQ0�M��	ّ~ʾ�|��>ol�]��j�M��)�I>�Ma�7kAs%�~����+��|.Rx��������F�:�[{q�'�4m�n�P�C@f�� ֖��u�������
���� ��{
/u�)�sm��M$�q���U`�7B����$א����vS\�~����v�f��}��/h��}���,!O�Bn� IfJ�/�^c!�bp���G���u;G�D���U��4������8�k"�N����8��$'0����_���U�
Gyy�ց�P~���ֶ"nV-��J~��M�|�O7�!F
_w����z?у=�cC	i9����n���q�8��L��z=�#2|R��(��e��K���NQ���|>�l����7~Zo�n�x��^�A :"µ������[�� MC��i.¡)�E�];�	a��-z��ߒ�t�IJ��(nЮ_X�R���/J~�.2�� X�2�y?��?�U@��4���_4���O N$jճ�(�8uk(��� ��N�C�Fz2�i8ꑯ��=!G@ qA��gd!-tt���C�R���p^Z���oL1~X_l�U�Z��TqkՐ������߼���c���4d����8Bq��hzC�!0�𹴆�۽�q���A+��M����(A��ow�;n\O%-�S��7�����.��ANF�X�~��+�b5?r�K� ��s����k�k���}\G����=��ƇH����z��Rș�XQL��vb
j
b���E���<���#+I��w���1��R* eP��˥�+0��Y��uk����$����	����n;�i�A�I!�}�@y)V̄T��ؚ��v�*-�j���ؠ��H�� CU��"ky|���x/��j_Z���h>o���'��G��[X
�53�!���L�L�r7t����i���R8P���q��%?���ב蓷�z
�8�4��Bs��ݩ����ɴ�/�_*������/vH�-�V?��������^���$t�'b\�Ju��'�r�yr�{�[���y�u�TLȶɋ����
[�<�]ϑ�Sf\�K>2��k�YZ�#�p���r3ݝI��U�4�AtjH����/���Z�P�(�����'/�YpP�*����q�t�L��eZu����%t�+��
K�L4�OH�!&i�/�_AҨu?��i���Ͽ���K�kex�~�vr�}aH�_N�P:����߬�������ISH�8Ơ����3�E0�n3���+���,oߟS���~���+(!�������������y엃�t��8ʄ�91��֦u����0�q`�`w��J����2�a�2$I��P��K��YAaEO�)��.#��J�gU�m�%�Fy�.M�4�Y�u㝷xbP�������3C���"o�ti|)�h��;�"@���4�$*b��di�
N��\_\l���
���"��ic�q�(�.#a���PZ�
L��S�5*�Y�S�X;�;p΁�D���F'�I�0�׾�~��R���ﮕg��`�
�V�F��y��D�O�?��9��W��A�B�Z!}e�x�v�d��1*�L�x���R*gn�(&�p2����N6Ih ��;h� �"�}i�
8a~;_����aj�9��ң���f40�E�T�'���(��I���7e^��8�{>�Bm����ɶ�#KB!\H�(�bj�_X��;�~�җ���x�pU���\�*�_L�?��:���{�@��d����
��k<WA �  {+b�3#D �/���v��&�4j�D���Oݾ�~�4����绫�y{���n�n�ow�����c�'6d�@e�:�~�Xԣ�i��dv�n� 8R(Q��X�BSh�~=��6��뭓��>��c�A�Go+�N{�I��
�88
��K�WQ*��g`)���v�Y(�z��Z(.ç��� ��z�s��+��H >Zى;���T���Y����S�XaXZ��P��8b������!�ý�{z��)G�h�)�!e��r��zR8�y�@C�ڂ�e`]O�37���ԎŃ��vPW'���#���la�����+"�O9>R�/6��w��s|fn��8�6�`�@������ADø��6f����U%fҰ�r.S%@�F1�({���R�$ljv��H�	%C��&�6_�;��QE�ؽ����AXoS�!������o"ti�1 #LN�`i��4D��}��]���ʐC.f�rݎ��B�#}��k }?�c�5;xjA���λ3���ML���S������������NHo6�?1�ҟ�']��uӏ�%+�Y*ن4E��}��{�lpR�v�K�8�8�x��%�@�t��E����G?�ى�[��X�R}�BR��Ǹ?B���S�X�5��1�BQ��u��!�l��Mg'!��+ծ��XHe�;�I�q|���|�+;�^�|@ |�����C9q��X��@ݡX:V�����Z q�hǰ����=ԋ��ڎ�n�=$c4d
�{9�!��Oe�\��ۛ�G5�%���'I��~�:�b�}T��5��p�~�_ۧJ5�n�*� !z�>��G�?Cp�#Jv'�!x���!%��ztN�k},7Ɲ㈫���s�M�NQᒎ$2�)^�ב��)�asV���D�j��p�}��j�� �6o�)�
羚 "e�������`��%�8��^[�:��9����ϤrHa-k����x�։$C�AbmsdB�|��rplj "���1!x�,S߾_D�k�ha(�#
�HE�u}n�o��6{��|��o��7g�+�??�����w�R��=��U�����������)>��(ˢԥNy���q&Dj/�̀4��s�mcư��P�{T)�hާ�����(RV{��K�WNU�������ۜJ;�v����Ň�1��b��J��4�R��1����о�E)P:�8�A��$�@��E�&{�N���2S�$9s9W�yuP@�<���$|9��͖�9l��.�P#91Eᔉ4�p�.	}�caW%���Q8%@��{��P�h��o
+u<�Қ�^u�@=s�c��)��P��.$�ܰ�$1@�����D��;�?�Os��K���BWg��vV�q#�)~[hʳ���yz�U�/�XX��Ȥ�rn"Y �OR�A�5Љ�g�fMHh���Tmn ��%��c' �R��ן�)�Hm���~��r8�_�=z��� dWx�      w   /  x��Zْ�|~�<����Oei�A�_�^��� h,`����H� ����P����UYYՠz�a�]����2�l�����f���o���'�2��Ę������~�Y�=8���ew\/�7�?m���z���zb�D��=��>��b�1i��H�����r\v���t�b�S����)��ID'	�!5��̳���9�Ry���g筣�r�c�;<�p!4�tYz�q�NrT9c��K�h4Q�f�����_��iyB��v��n�_.�����6����xX���_�i"Z2c��4�_�旧��𰟿�?���jw\��0���03C(�T�e��XVz�5�e� ��T��'h�TZ�f'�iNl�J�b��'|��Byi3L���Q��Ѧ�u<Q�'5)�k�W�4�c|j��߭w����=�;�្)��+Z�Og��,�
����]�Яw����|uT\ŭ��2��+a��v�!SO	�.��$�r��27;\��հ'�	��yQ�Pf��t���E��4��~m�
�)P���.D�O�髟��ߝ���^\
C~�e�>
lyS`'�\��C�Y:oi�b-��k{`��2��f9���xFIB�s�1
̺]$o�^�P1�nay��ٙV�gjo�6�XN��"Q2�u�_[������?_���s�F�>z���H���������C��PT㦜`g<����O
��;�`I�<��%��V:�ν��MSB����m�
-�Q�V��|1>����-![��<>1L��1�Jt������ _#u�Vp�t�H�R�c�Ů��:����D��
^��ƙ�Df�����Uz�mD&R2��Ɠ$�`α�l�������_�d���̈��qzU�i~)r-����83�;b�;�1�D�|'�#rH�IW�$�5��;�Z��훝k1:ڞ�Wɀ� ����}R�[�����(Q����N����>DK�=_����iz�ڵ4��f�D��Ǚ�[s���}\��r㈓�C5'mI&�'=�2S`+bԕ�]�Ȍ��tES0��<i�1&����W��Ȃ�~xX�.��pzwB���߮������T��c1�|�N\�+bqy7�}�X7�����r;v)�PɁ�elU9-�w�4�&l���bYy��]����o:�X��+#vd���9EYTu���+JE|p5=[|�� �����S�Q%�� �.JI.��m.�<�`;/ڐT�+�f��L9�G�˚&��M�]2���\u	��Nv�߆l���u���+XE~p3��f?��SK�c��+N�R5����=b�y�!_��������w0U��+����*'q�F�h��h*(��'A;`-��%�v?���V��(v������eU�.�f�6��!h�Fzܞ��A�=ܯ�������J�^�}���6��Ӧ�3�ٽÏ!�-4)g:k�h�<S�,�4p<]���@�q�]�JaH,�{!2�e�C�k�_�b��z&���0��]�����.�6��N��>�8m���"*��L�?���Pn�#�SJ�!k�Ey�Hu���,h%��B�v�����n�y(P�y��9���L��	���n$6���/���%��֕�+(��17����U�c���F�|e����F���G#��6��Zp��a�K�q��/�9  VY�6��i�tND����k��R�
J��~m�
G�iqVR��5����e{��$��`�Vk!A�=C�18����j��"���E�\�l
�.#���y��O@�R8Bl�������K�i�b���0����;�����	� �����������0���:�1����F<Ν��U�ᙆ�����f,)�a�Ԝ���vlOA<�a�T�QĄfG��H�vN2�)��)�k�W���'ZM߮��_6�����Z/��H��߬vw��r?���宰̺$y
��N�Xb��7Jf5A��x�r��5�(n/�u����a7�dc@)T�b�"'�E�l�6�DH ����B&f��?�Us�t���W[pTj�r��9� �*�V���������j�k�Z�{���b��0qA�=�F��L׏b�9�ҵU W� ���6Ї����f�Rӗ��Qh~�π�?��I�uu�67�K����{�b+F5��Q�!ܿV�&<+ݰ�����TV�s���Q~�6ŻS��eP��4��m}6S`�������Nw�CIQ�ϸ�9{�}�I'N��uR	���^6;�R&P��@��H�|����'�N,�B;3H��G���  ��-�N?_���H��j>��F����F>��C�������-�x��A���LB��t�m��h8���VeQ�W�/ pR @i^<`����@�"s���aL���@�V}�m�8'��i���&i; �m!@;72��"�?XO��$�t�e��#�o����Z`��?x��ϡ�|���!w�D��,�
���x-B�G_#�$�Z=��?�4 Ym�ֆe(���֝����?�毻ge�|z�ޠ�{v:���(-M9�~1���A^���(y:��ETc1�Civ�=A�}�㌓l!`,��?ޯ	
�U�6���_��������)Z} U�.5x�a������#訾-�&�P�%�[��PJ�s�CXB6Y	r�~�vԳč�}�'�g(Nz+"�����di�s�h��]�s}eP_k��������(V��u�<[�]~���H��[����ڀH)�T7�>�
L�j��F
�S� _MORzl�#��9�����&Ic�+��A19��i�H�9=�.�P6��ް���k#��5��g����zE�Pd{l����H�ga���ʝO��'7�BvP����m[�
�Cd~��irҁLZ��h���.ADP.g{�)� 2R�^jzi�:�/5���W�j��F�]Ҏ��T�����8�s�ύ�ҿ��-E�Tz��4>�M�Zs%��S5��I��jwE� ;����(�#�L0KTQn%�md*!��˚���+���>lYm�g��k
Y��r�J��ך3�>bL�l���S�j��v�u1:J)*� R�z�K-H�&R��:����S��J������[�W���'|�����������u����=l�w�ϫ㸍 �#/V���+La��Dߟ����0�TE1�WK��~��@&)׉�O�$���]����F0[X�&9^ҡ�Qu��R�A-�6���Yu�uN(W>5m�k뫉��B���T�Fy�'z�k'=��oS+%P/�����)$��^�]0B��DZ��s��:�jS�vP>��"�����_a(W���mq��J�|�ܺ��%��D`�]kH�:�Q�Y��r�-,)��'�+IdF�vk�T�r2���N�T	eH�;.�dv8Jr��w`$"�+���GA��3%�F	��"M)F5���W`K*E>}�?�LpX��ޝ�w�W��T�`��p!˶�����m>�?��6�q�9g��SbR����h�P��%\�G!�Fٕ,CZ�&7��Ф��a�:�)��S�Q�h�PcI��&&�p�\��t�=�ifAq�qu|V�z�ӰG ^Jo��QS8*��.=�*CC(p:�<��i�/��I�^�\�����q�;7tG[�n�m_q��,���'*�|���q`�v.�w׆O�n�c;��C��G���*��s���y��JQ��YL谇�2��z�&�68�t\�Gȹٯ���Zs��d_.'��W��]"����� ���5'4�Vҩ��ۭ'L3����eksf<ɌD�-�������Ǥ���?��f�r����O�<�?����      x      x������ � �      y   J   x�s�K�NTN��J��L�r*M*�V��/��L�r�y��r&s9%f�*xg$+8�fg��d楧gr�p��qqq Wp            x������ � �      z   �  x�5����0���S�����8r,l��=�"�xqƱ�a��ʆ=8��үO���7Vm���V�l-��w�b
kw>3f�w��uu-�SH�.�p���K�1����d��Z{;�w�38P`��*zB�aOW�P'pt�;��H������OA�p�&�_On@�=��vv�v-_(�^�[�R�Ǵ�,-�G�K��a"=��`1��^�
�:rG(����с�v\р���Y���S+�)���U꩐2�1U`�AY���u�%q��k��,&��[-(Kxq�p'97�nhf ��2�Ɩ-�$�!�I�;��'�r�*�\�M&%�Σ�K{:Y4_�߽4�����䟳��Rw�'әX��C�ʩ�韀�?,M!0���bۅ�ok۩�ՅJ9��:X��G�����:;�N��K��.���j��\;E?����j^dRQ�s���LÖ|��0�����z��      {     x�uWYr$;����T�E,wy�?�$���yE{�p��@���~|�Ń���W\~�f��$z��-�t&�A㒅0g�ri,Hk�C�æ�A���1��jo���AH/d�9�`dV h�#OD�z�PPjv=a���5�T⊕G�L�C���9gǕc#!�BƮ�$sȳ�Q]�B���2j6�1�x���(7���+&
2W"�y8Ji�*�	K[.����t�2�鹐GW� �*�&ɐ����N[g���\�^iB<G�!�&b�5sɘ}�o-bo�!�|���b��u�����;������vy���\�T�<�\�$i6'WS[�	1=�dqY:Q|�vla� *@��֊O��SYK���T͂F�-��L��S�r棆-n6#k�h�c��0A��d	R�iL8��.*��h����K�Ħ>�D�v�gbћ Y.��Nr�|.i���;�<�/˨�����d���g���؊�N�{�z�J�5�:n���P�SK�c�S���@��Cv<^�e�H6�n8��<u��6'by^�ʓ��P�ܓ}S���?��X��
�fuS��m=�0\)�="��Ǧ☹��e*"ئ:'��TS���d�c��ج%n`����81�7?�PVG�ޞf^�y����L�f�K�Q�4q�zq �i�gt	6�h����pk;��{��b�;)�p�ă���I�p�v|؜��1�:�2�Y�y����ڮ��a���~G�귿CQ�p�.���^4�f�[�&��PX�☒��ͳ��jf���`��)J1@��e���RĂ�ܨ,����xv|4C�3�/���o�P�������uI������_���f٠X;��D��!�=����^�����8���7�2V3&�7�w�$��	�
r4�@��z�b̈���*��T{A7�B���kr �6��q�{;�L��eyc����ώ`�����.��lJh��:�[^Q�J�r���[�����ۣ�0���ե�p����lԲ�/���&�V���_��_�`�o      |   *   x�3�H��*M�I��2�s�JK�lc����B<F��� ʶT      }   �  x��X�nG=��b�	��/���D��6��/-�in5��O��n"�xAI��2��ի���eZ��.����Ww�}LC�Ro���0�V����S>\�/��@�>��h�\��%�I�PQp���6��B.j��#"���}T��0"��5��y�֤�L�O�Db����qG�&�*7ML�����?���ު��T�+ܬό��Ũ�d)^�?~��ϻ�"G����I��M���0\.^���z����������ԟ���2yQy��B�� 
�X���,h�3K&��Ѱ&���%$�F��HX���<G�x&�3F1f������ҎGڽ�>N����v�����_�UoSZ}ڶi�]�����i	�o��>����yL���%�W�UZ��T)3$��(,|�������LA.(�f59�f��(�Hc����b��VF�8�T����{��ɺ�<���',ޤ�r�~����,��C�Je,��P9'�B1:G�EDd� =s� b���H�=N�%T*�Y����kNsp�է�?��u����O'��f��'-��(���n���h�e�?��W���̌��y�p�������0ڀ+����(x�FGXP	+�Ų>g���m�:����y,����6���z�|H��x;Y`,�7C7�?��u�#̬��$�M�P�bD"�\��T��w�n-���\84,ZNE���uq�cQ�e~H��Ҁ���0I�]U��>�k�v���켿�.@�6�>����NqAv��B�Du*��̓�)��yL��FGʉ���*��(�!��(*8T�2�
�s�"BI�-.x�$`�8$m�W�
G�1�{*�|
n9t)NK���8�%JЙ8�Ab��2h������[��� d�^C�����*�"�@FV�J�9��:x���A�|���c��G@`s~����1����?r�c�9���/U�6B+�1���|��_}Tu/-�;���n�`��>����6���1��q/+��9ʆA;�\�Ո���F!��W�R�.��eB�VT�U��:h�jotj���tF�7�ޏ��?M���z�⡒_�_������b�IS��*}Y�W�n�E�z�2Rr;P>'�YW)/�Ғ@�N]Y�P�rg���+���ZӄA;�æe���"4�6p17�V6�
��������1�����d����ؙq�]ޭ'�Y��Ă�#J�IZ��g�QC�C���"��3���,�RS�*FDs��� h)�yZb8��>t�Q#u���+��{�nB���C=��]?�;���������T{��fT�x�5�j�ზ9��SimÒe�纴S���&�����Y�:��9���ԍOӴT48�����:�Ex����$M���u��i-x���]�Z�80�m�U��_�Gs7i���s|���~6����b���"@�A�ٞ�ɂ?ǌ�'��;�'�B�,Z栨d�E̡�uH��c=����������@E      ~      x������ � �         3   x�s�I�U �D.��Ē�<0'	�II�Ls���S��3@��=... ���      �   .   x�3�t��+M��2����+�ȩ�2�OM�2L8]3�t� ��m      �   �   x�m����0@�ӯ�0�E�p��4wћ�1�v�n����[�GO�ɼ�����X^�7��A=��zC��5a���m^�{���b=�l^WXfI�U'��E<��kO߰]`]��$3T�?��Fvo �q
.2!K�q+�6�'�j�+`��<Ml��C��t�P��"��A��(��5;���Y
S�	�=n	G-�p$7����+]Ϳd�8K!�?�R�      �      x��|�rɒ��OQ�`�/?c�eL[����R�6���6��;�U��V�hZB�ʌ�s�=�P�H�C�������M(&�c1yj�DD��,%>��}����rXd<K��+r�X��Ɣ�<�@U ����<S�+?�)���Mڴ�?7���V��������vڭ�O�ߦջ��w~�ߣ��bj�?W_����E^��Dr�4��T���0��V��:/��+�<��Rt��.�z���R��s�p"���2J����l�NF�&n��;��.և��鯿��tV5sx��~l�Gׯ����wg�����o��M+�/Ya����BQ��_�|e����>��g�런QxM����.q'8IY���^hn&�<Z���f��bmd�󘚜%g��dX�[�%���\$��M�+�0��$v�n,��q�y����+�{��?���E����|�v��������tu
}^�Ng���������tw��8]��j���L����|X�o>���j��Y��yKe���1%��2��f�<�*S�+"]L{x��`��9)�����.� ��1ゥ~Ƚ��c�p]�ύ_�H5b�����77E7﮷�����[O��+(�b7���[�|וg��E:�����G|��<#��I�r��hQ�jC0�"�,H�h)X���)�]�'D6T���x�1���ύ_uD{8O}�6ո�j������cN��l7�.��)7�v��}�ޟ\�\�n7��ڝN����������������tS���m1�_~�\l�֬8�5%����b�v溜��W���HO�}ђ�?B{�v���*L�1%ܴK��ە�KSuL�r����7�"3C�pp�{����KM���?=~Q���ô�]���.�����'����V��ʙl�ú)����Dy*l(ϛ)ex,<,/��Ƽh��oW�:�E�r�a��r��A4�Fg5��0zm� QƉ��a��)���i�H\(?��w�W�&�����ޜ� ~}r>m���o��ۢ���v8��Y����m��#������Re�12@��5޹���e��$E�0#��,'����������b����hҀ=��|r��[�F�i�}?�nah嶺��>�=
MW���wpov�����	�O�*�K�� ������/���ё{�ϣ�^j���NF+�Re#��,�Rk@&�^�F�!A��]�YI�(���l\�S)Y���z���$y�}nl��0��d>�,������O?U]n����K�{<5b}Y�;��*�K��6+	��͊k��ʷJ�@a�+6/�ݧ/���;\��������;�ʼy1:�z3´y1ǃ���a��xħ�Eď��f�����x�v댝�;�@�l�xx��31q��ǯ��ȷ��9]UE�o�a�ż_���tz�>��;����LÌ�|YѠ���ZS��iI�V�U\[D��H����$x6�g�ef$e����<�$l-�LE�|����3J�I�X	��s����1 ��|�7���u'C�7�ˢ�����ן7���}� �ϠW�����W��)[	���"�y���@��z���V�x���MΘ.�=J�'�9�����-�
�4w9����V��]�>��9�T)I��0�E�gƯ��{R�sw�m���Y1��H���G`e���"|�uz��tӚ"��k�.7-��c3�ʼ�������&5U��E�J�kN敉7~��U��P���6o��U_%[T���sX�tȁ����d���X�W���s�K��2��]t�1�������կ�v����\n������-y�o���u����ɷM�k�
��T�x�2M�%>�]J�=	c���0�&E܁�Ĭ�Y�K8�b�,'1��B�����n)�;�@XL
�a�]�9_�z?�T��ټX�4�<���9�=�|���rXr��ۦ.���������M�%B��X�W��C�",/2���/�@��;�]i���c�A�,�R��0���:<c�U�\ՠoHdv:� nF'g�vYOi��4�Y��򕄃��1�M�79���KM�������Ѯp��ӟ-8�]N�No7�+[1]�*O2��G@�o������˸3�T��	��1k*����ڂ �O��3ek��H���X�4�̷��M1%@�.O&�-\����Ư�q����l���<m���q���~FF@��~�-ӗ�z����[_nr��H��X
JR<�8���6�m��湟ii
i�Nxt�����z%SOZEK�Ua��,�>���@s���Y������]��6�n\L�0�{�ҢJMtx��W����>��5%��Z�X#�9��YΓcґ&��X@n�D^(�~�
@�!P-H
�7=ͥ\A3_,ޓ��4��_.;�-��[�]�4˚�� ��4	 ��'�TM�O�Ҿ���/r+��by�'|	�T��lQ�Sw��Qkh�e��w=5-�2�;��O�M��'�9�!����9��R�a��Bw���P�����=)������f%�����,T�(�����&3D�#@X�cp$�
DR*���ߍ�VD�DJ��
i�0��v=PG��u����PVT ����&�]��m�=�&�����4��~w�)|�q*@-h����d+^Mв��uN��b��Ir����9րh˥(s�@��go"�N�z�\��3|X�3����XQA��
Q�H7<t�����+zn�:?�(�?�M�U����w�����ܬ�����	>ֽ��p� Wz-Zyz_�r���zu�[�S1�m�k��e�-s�B�SŻ���œ�/U.k}JyPV+�w�3Z)�^.�˒ZSү��&��<FG0��=sckD��-{&�S2�X�'~�_S���0�&ϲ<�c~9-�j���kn�!����΢���~j"w�{?8��������b��䬧����C�Yb��ߘ��A<�)��V��\Hqv=;`�y@~ �t����Z:�2Go���P���4�����(JN"49ԁ?���A{�H�zZ[�Z>=5�s�W�8���l����'_�y_��>p��&%�8%j֡�ǋA��m�~9~�>|p����������Ԑ�n��>3�YoH�a�J�ɝ�И��q�թT-�3�*�M��*� iI{0 �/'`o��\K�2���E9�ȉ��q�ׅR@�O��n~�&�\�]o���N�C;_���.U��bl�T��Q@�Q~Ajc`U�A�K��b����[ѷz��yI��x���&^�Nɨv9(��jrZS(,�Q���������OͶ�y���h����t�״�^|�����Zr�\}�M��^?�#�hǫ�����@h6_/ǰ�'�vW�o��Z��眭"���f;15 �zbr�(>V�AL�l9׽W����`)�	��L�՚h��&�b�f&&ĊP�X<��$1V�;��(�b���<_-�9��m��|x}(�s��ɦD�[qM�7���Kk�v�a(���C\�WY��l����x��	d5q���_*j����H���������^2,F���}�����������;
�2ƼQ%�^�o�A��K�x�S�������L�ѥ_�����b���1g�2m���O����׊�Y��l��`�9eq�ǘ�t޿���_��+:� ʝ�y��T0�d�����"v�m�49 N���1,��ef���,k��h����t���A��8�hQx�m�G��xl����أу��͟�Dgkw5��?l.�]�v��}��]�¥4-����V%p����v�/)�-�c :h�B�@��A�<��S�2��^:x��\JB�sM��DY������G ��d̠RI�E�������0����ۏiW�v��d3��Ed,0IO� ����X�~<���06v��C7�n4xYK/�KK���h�
h���-����U/�6�������l�T��u����B�/�(8����I.c��4��U�n ����}DA�"M=�*�Ҙ���i���u�v�Ӊ�v=�G���Qm��&�����=_�U����ak���ϧo���    ��Ztdkc�]��%dΌ��k��ٖ1�ݾ8Y�9�XZ�z`W.|�L�uF_zC�r]�*F״EMh�h����r�U�83LG'{��"��i
����Ưdw_o{W�U�����'����6��m�c�뻗�j{�/XS�ǚ��
�LK��c��f���3U�HٟR��Fs��"l�Q�b��@�re��,l4j7��Ok��Q���c	B�{> ,��t�ޟ�\o�Oe��X�����5L�`�o���V�ӏͶ��$)*�'oF^Ju����K���T$��ͼ�TD�>3|U�KFx�]b.�٦Y)��sfc%�>
�,Ε���,�^��(P�-�lu�ҟ�RW�М���t�W�/\�����)�P[;EX!cV�=c�"��WA~S����y�%H۞�U�r��#9Y6F�,I���i+RU)�	;G�<�.��@(�z�z�-;E��VZ|n�
�]��k��D����U�N\U�n����p�P4��wP���Jj����R����}FN�R�>�����(�%�&�9�����-�W<ԅ���<��g(ߏ��z�����3�r�f�dF��� !v=Ӫc��	��bwH�zE���J*���Q�1>�w�K<˟���˙݁<lnz��xw���fڞ��N]['Ui�A(���QII�0��<�H�8eى�	�< ����h����6�X����i'Hm �aq}*%��Oi�Kf���D�e�a�&ċyY���(�z<�Q$?���h�:a�Q���Oϯ:e}��_)��TR��J]օ�u�����fn�/UT�l��P��t��
�adtCL��0�M�>�-\�ǚ���CΌ 8�����P~�Ǉ��4g�����^�w0�?��W�U^o��^���G �����IcM��nQuT��{�Y�hZ�?B�t�`�r�F���%�P��k�;h�WỼ�	N�\JQ��ɹ�[�N�q ��YX�\>7~��ssO�?v7���Tsr ��k�������k���i���R6P���^d�{�S*�b%�Z�a�t��P�K²�#BI��0zB�+*h�r����I{��;Zj��qVؖ�Bw�s����Y��`z?���>�Y	[�3勪9�ڧzOO|��r��ww�����.��)�d�qI(ͼ�Q��c1l*.M0��v~��h�I�r&�f��irRa�KC�R ڊ�v��8��h!�^
.$ a���<_U���.����fut
�Yo����ޭ`��#��Z�<���3�7����$<�m%k\��)-ob��P�9HД*΁�D�B��$kq�}��sm@x4�X�ύ_�H����iZ�.�g��nw��mw��y�{o�Y�fjb�
�h{A��9 ��1�h��.�PcH9�+D�mr�U<�Z�U̬�]N;f ؀�j�*�bé�t�Y����Ǡ���O�k�}�������1maV�,��|P��zt�}��4���~����� ��'J�iϣ���E�<�φ�0h`��!�IJkFm&��M�vzݯ퀉dG�6Y��<���z\/�T��v-�)�瞯*dy��x޻Oޟ�M��=�u�; ����|ma3�N��v��-��<i%Jw@��z!b+	�s-ʷ�<^zE*�ٷ�D�{��1+��Ud���H�iH����+aڗkܟ��ggwq���ζ�ۧ�k�֟~[�J,j��"�Zqޔ7�����A�ԯ���JI��C`pX)r���AU1|bh��vhM�jϭ,���d��� �t1���71*W*d*��Z�3�W�yZ������۴��g*{ZR:��}ʮ��r��ZK�k{p���q�m�3$�c�0�`fqς��%�	�P���.�Vpj����N2˱�;\�;0�栣K9��@ב)	��<��Y�>N�N�J�3?�>{��������dK�,9�E&ɏC����d���r���j���#ΘEK"�@��	gf=�/�5��K��]�`\>�2���w�c��"�j�+V��ܘ�~�\�j�.�s��~����������v:�\�F���I�RE)�GznV�0�����[�������$Uy'�xR���l���j5I�im�o�!s�ϲ��8��S�N��G��ݹK���}9z޳�p���m]����[��-�̆��.Ɖh���ғ�n�GS�J�Hn�Gcŗqȣ���[�m ��i2c�ڗ�����;P�؀i�)�>�C���e�G�V�(C�gw:���-/�K���J�ܪV+���Ue����y�`�+db�S`������׀$�$��q���e��imط�)�Ѷ���FK@I}�kL`�J�I9&�Y�n8�D\_�Љ�^�ߥv��Ư��3.U�|��]Ǔ����k=�_ߔ#]���&�}�3�R�!���� K;�4��>��7���O��y�=t���K�h�ZC;�V���[7��T��9���_��%U�8c�9�&��+�n\��Όty���u9����h���G�@�M�U�4ժY^�i����Hou^����\�
cAA��C�3CNU�`وG��c�A�D*�����'��}�:B��^Q�;�����>O�.6�g��}���&�!�B`ӁC�3V�Ȧ��#�Gݍ����q�̔�u8/��D�2���DPJ���OΉ6=iF��Xu�G�zS��"����Q)W�����!P���O�y!��Y�\���4�6�@��ѩE"0�!Y��xp@Egy9]���0{���(�c~�h�������rO<�N�c
K����	�E��[/���D���ܞl�Y3f_�?ԷI\�,��a͵��!{Qp��d�����{[�#�cor��8�^F��W�Ya�ܣKL�P�Ǒҫ�g�������y��>� ���/�	2ˣr@R����c�y8���xB���?��EEo���2l��h�.����]��e�n�{6^���]��ʚ/K�K�[=��V�'�Yx{΃������VWWN���<J<̇9������!9��IR`�,�f�Jq2_� ����3d9yN���[�Ҁ�I8[`�����t,PJí��/�U�Xxfhx�qq���UM�{Րq�n�jq�g���=w�T]�K�WJ�-rm�����n�6`�<���k�^Х�׭�"��7���Wg����5��p��� �څU��M�8�W|���!��+��~=�%{D皤g��*5�AІ��o��=�rT������G(������q�R���Վ��q��v7���"����Y�>�,Yz^�z��b=��i���18Y^b�NȪȵr��X@��&��&�N 2�����J��L��@qɏv|�՞����[��F��
�H1q4|�B�_���e�!��v�SUPV�r��d�46��l4������M9$��bn(����������Eq6�g0�����c� �.�����o�T��������������]V���ghdW�G�Ь�c��������_xs���t3����i�A�*/S<_X:b)���r*U^�b�E�����JH��� �R�n�,�@�҄\��s�׺��掛��u�s�i���j��z�����sW�N�/�d�hɹ�=�4����>�� �`�- F 0�q�څN �#bN��=�	��(3٧�`gr�4]���#�V��;WO(qA�|���P;ƕ�i)aȭc�~�hsG���W�l4��Kށ{�>�'C�v%��}0������^~$�1g�{5:{� "���`J�c�*��I���DQ*Vmǃp����M�j"_���K���|��c�!�K��XA^��V�6o[�����|?�V��B��#s�-,��^�X�q���yT�@��=)؎�95����~*�R*��?�W�k��^�\��-�Oi�`���3;��:1R)_������oe�Ӎ��z�<�w+� �˛)z +�r2ݖ�,g	#����8��IWOR��[�B_���M�怐oBpB��HM]�"�����sI�,G���N6y<���?7��By� �   ���=;�l7��Z�Ħ��₳�[S��!C��h�~U*�8���U�=�tp����/t槪`���A��7���Ն.�+s�C�9/)i��)�T���ڕ:]�3�]�����˭d����n����B��g�tk,(���I�}A�Yb�To-��Zu��.�!7��텇�����?C�!      �   �  x�e�[j#I���*����
�4�L�-��4f�ݷ;32�S��72�!��s�o����O/Ǘ��y������y������������Ƨ�֧/�総��t��xܶ�����E��?O���z��_N��e�����@>�ǧ�Vקn����|����"�����0��H������?۶?�֋}`����m��'6���&�Q�ʴ1���^g`�8��o��בx�o�����
���(�׷ǧ�{��W�٢G]�a`��6�y`���ȝQ?_�Ն�������XXT1;F&
�Z"%7���H��H�1"0!� �b�꛴�S��w�2(guNI�V�XC`��S!Z��ɪ�7��bu��h��$$p�"��ѪP�*��@j`�U�p�{���U�4ي�&{au4ي<ي�&[�`H���Ul��Կ�JU�s� "#3U,T�RP�NA6Z�@OAULT�sХ}~���������X�R���VyP�T*E�&j) ��Ӗ�P��l1і���H�F���Pn)h�J�ʒ��K�2��b��)����+J��O�J���+J�S�-\��Y����D��>Z�3%˒\�AO;�SQ�'�\E.���(���(�mF5qQT��]��Hͯ���e�N�2)�&ZQ*�-�͔	Zh�UO4�ӎ�*Ǚ�����6��
�M_���i�N����@��"�^�@S�i
3M�b�)P����2O�*o�k]�Pr��6U�ƒ��r#H;�*&��@��@�Q�+EU���
��jS�	�m�L���j��P������R��i�ҙdWL�'(��E�����ft(*R�+����H�Ƈ�RөP�~@�(N�7�U)X��(v:*���Y���@�/,�N �;(4rO��Q	��٭��v/ -i ]���sN���F)~M��QΟ霎r̉�����"��@�P����|���G����S@nE�ٶ�迋���x���p8���@     