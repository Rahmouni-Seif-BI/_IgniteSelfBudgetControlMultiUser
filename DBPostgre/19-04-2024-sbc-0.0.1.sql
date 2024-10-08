PGDMP      ;                |            database_d93k    16.2 (Debian 16.2-1.pgdg120+2)    16.2 C    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            d           1262    16389    database_d93k    DATABASE     x   CREATE DATABASE database_d93k WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE database_d93k;
                database_d93k_user    false            e           0    0    database_d93k    DATABASE PROPERTIES     6   ALTER DATABASE database_d93k SET "TimeZone" TO 'utc';
                     database_d93k_user    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                database_d93k_user    false            �            1259    16397    account    TABLE     )  CREATE TABLE public.account (
    id bigint NOT NULL,
    amount_rest double precision NOT NULL,
    amountbalance double precision NOT NULL,
    amountconsumed double precision NOT NULL,
    code character varying(255),
    description character varying(255),
    owner character varying(255)
);
    DROP TABLE public.account;
       public         heap    database_d93k_user    false    5            �            1259    16396    account_id_seq    SEQUENCE     w   CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.account_id_seq;
       public          database_d93k_user    false    216    5            f           0    0    account_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.account_id_seq OWNED BY public.account.id;
          public          database_d93k_user    false    215            �            1259    16406    credit_entity    TABLE     �   CREATE TABLE public.credit_entity (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    end_date date,
    interest_rate double precision NOT NULL,
    start_date date,
    creditor_account_id bigint,
    debtor_account_id bigint
);
 !   DROP TABLE public.credit_entity;
       public         heap    database_d93k_user    false    5            �            1259    16405    credit_entity_id_seq    SEQUENCE     }   CREATE SEQUENCE public.credit_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.credit_entity_id_seq;
       public          database_d93k_user    false    5    218            g           0    0    credit_entity_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.credit_entity_id_seq OWNED BY public.credit_entity.id;
          public          database_d93k_user    false    217            �            1259    16413    credit_status    TABLE     �   CREATE TABLE public.credit_status (
    id bigint NOT NULL,
    code character varying(255),
    description character varying(255)
);
 !   DROP TABLE public.credit_status;
       public         heap    database_d93k_user    false    5            �            1259    16412    credit_status_id_seq    SEQUENCE     }   CREATE SEQUENCE public.credit_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.credit_status_id_seq;
       public          database_d93k_user    false    5    220            h           0    0    credit_status_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.credit_status_id_seq OWNED BY public.credit_status.id;
          public          database_d93k_user    false    219            �            1259    16422    deposite    TABLE     �   CREATE TABLE public.deposite (
    id bigint NOT NULL,
    action_date timestamp without time zone,
    amount_to_deposite real NOT NULL,
    code character varying(255),
    notes character varying(255),
    account_id bigint
);
    DROP TABLE public.deposite;
       public         heap    database_d93k_user    false    5            �            1259    16421    deposite_id_seq    SEQUENCE     x   CREATE SEQUENCE public.deposite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.deposite_id_seq;
       public          database_d93k_user    false    5    222            i           0    0    deposite_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.deposite_id_seq OWNED BY public.deposite.id;
          public          database_d93k_user    false    221            �            1259    16431    purpose    TABLE     �   CREATE TABLE public.purpose (
    id bigint NOT NULL,
    code character varying(255),
    default_price double precision NOT NULL,
    description character varying(255)
);
    DROP TABLE public.purpose;
       public         heap    database_d93k_user    false    5            �            1259    16430    purpose_id_seq    SEQUENCE     w   CREATE SEQUENCE public.purpose_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.purpose_id_seq;
       public          database_d93k_user    false    5    224            j           0    0    purpose_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.purpose_id_seq OWNED BY public.purpose.id;
          public          database_d93k_user    false    223            �            1259    16440    repayment_entity    TABLE     �   CREATE TABLE public.repayment_entity (
    id bigint NOT NULL,
    amount_repaid double precision NOT NULL,
    repayment_date date,
    creditor_account_id bigint,
    debtor_account_id bigint
);
 $   DROP TABLE public.repayment_entity;
       public         heap    database_d93k_user    false    5            �            1259    16439    repayment_entity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.repayment_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.repayment_entity_id_seq;
       public          database_d93k_user    false    226    5            k           0    0    repayment_entity_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.repayment_entity_id_seq OWNED BY public.repayment_entity.id;
          public          database_d93k_user    false    225            �            1259    16447    spending    TABLE       CREATE TABLE public.spending (
    id bigint NOT NULL,
    action_date timestamp without time zone,
    amount_to_spend real NOT NULL,
    code character varying(255),
    notes character varying(255),
    account_id bigint,
    credit_status_id bigint,
    purpose_id bigint
);
    DROP TABLE public.spending;
       public         heap    database_d93k_user    false    5            �            1259    16446    spending_id_seq    SEQUENCE     x   CREATE SEQUENCE public.spending_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.spending_id_seq;
       public          database_d93k_user    false    228    5            l           0    0    spending_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.spending_id_seq OWNED BY public.spending.id;
          public          database_d93k_user    false    227            �           2604    16400 
   account id    DEFAULT     h   ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public.account_id_seq'::regclass);
 9   ALTER TABLE public.account ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    215    216    216            �           2604    16409    credit_entity id    DEFAULT     t   ALTER TABLE ONLY public.credit_entity ALTER COLUMN id SET DEFAULT nextval('public.credit_entity_id_seq'::regclass);
 ?   ALTER TABLE public.credit_entity ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    217    218    218            �           2604    16416    credit_status id    DEFAULT     t   ALTER TABLE ONLY public.credit_status ALTER COLUMN id SET DEFAULT nextval('public.credit_status_id_seq'::regclass);
 ?   ALTER TABLE public.credit_status ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    220    219    220            �           2604    16425    deposite id    DEFAULT     j   ALTER TABLE ONLY public.deposite ALTER COLUMN id SET DEFAULT nextval('public.deposite_id_seq'::regclass);
 :   ALTER TABLE public.deposite ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    221    222    222            �           2604    16434 
   purpose id    DEFAULT     h   ALTER TABLE ONLY public.purpose ALTER COLUMN id SET DEFAULT nextval('public.purpose_id_seq'::regclass);
 9   ALTER TABLE public.purpose ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    223    224    224            �           2604    16443    repayment_entity id    DEFAULT     z   ALTER TABLE ONLY public.repayment_entity ALTER COLUMN id SET DEFAULT nextval('public.repayment_entity_id_seq'::regclass);
 B   ALTER TABLE public.repayment_entity ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    225    226    226            �           2604    16450    spending id    DEFAULT     j   ALTER TABLE ONLY public.spending ALTER COLUMN id SET DEFAULT nextval('public.spending_id_seq'::regclass);
 :   ALTER TABLE public.spending ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    228    227    228            R          0    16397    account 
   TABLE DATA           k   COPY public.account (id, amount_rest, amountbalance, amountconsumed, code, description, owner) FROM stdin;
    public          database_d93k_user    false    216   P       T          0    16406    credit_entity 
   TABLE DATA           �   COPY public.credit_entity (id, amount, end_date, interest_rate, start_date, creditor_account_id, debtor_account_id) FROM stdin;
    public          database_d93k_user    false    218   lP       V          0    16413    credit_status 
   TABLE DATA           >   COPY public.credit_status (id, code, description) FROM stdin;
    public          database_d93k_user    false    220   �P       X          0    16422    deposite 
   TABLE DATA           `   COPY public.deposite (id, action_date, amount_to_deposite, code, notes, account_id) FROM stdin;
    public          database_d93k_user    false    222   �P       Z          0    16431    purpose 
   TABLE DATA           G   COPY public.purpose (id, code, default_price, description) FROM stdin;
    public          database_d93k_user    false    224   rR       \          0    16440    repayment_entity 
   TABLE DATA           u   COPY public.repayment_entity (id, amount_repaid, repayment_date, creditor_account_id, debtor_account_id) FROM stdin;
    public          database_d93k_user    false    226   nS       ^          0    16447    spending 
   TABLE DATA           {   COPY public.spending (id, action_date, amount_to_spend, code, notes, account_id, credit_status_id, purpose_id) FROM stdin;
    public          database_d93k_user    false    228   �S       m           0    0    account_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.account_id_seq', 3, true);
          public          database_d93k_user    false    215            n           0    0    credit_entity_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.credit_entity_id_seq', 1, true);
          public          database_d93k_user    false    217            o           0    0    credit_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.credit_status_id_seq', 6, true);
          public          database_d93k_user    false    219            p           0    0    deposite_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.deposite_id_seq', 3, true);
          public          database_d93k_user    false    221            q           0    0    purpose_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.purpose_id_seq', 9, true);
          public          database_d93k_user    false    223            r           0    0    repayment_entity_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.repayment_entity_id_seq', 1, false);
          public          database_d93k_user    false    225            s           0    0    spending_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.spending_id_seq', 14, true);
          public          database_d93k_user    false    227            �           2606    16404    account account_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            database_d93k_user    false    216            �           2606    16411     credit_entity credit_entity_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.credit_entity
    ADD CONSTRAINT credit_entity_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.credit_entity DROP CONSTRAINT credit_entity_pkey;
       public            database_d93k_user    false    218            �           2606    16420     credit_status credit_status_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.credit_status
    ADD CONSTRAINT credit_status_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.credit_status DROP CONSTRAINT credit_status_pkey;
       public            database_d93k_user    false    220            �           2606    16429    deposite deposite_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.deposite
    ADD CONSTRAINT deposite_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.deposite DROP CONSTRAINT deposite_pkey;
       public            database_d93k_user    false    222            �           2606    16438    purpose purpose_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.purpose
    ADD CONSTRAINT purpose_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.purpose DROP CONSTRAINT purpose_pkey;
       public            database_d93k_user    false    224            �           2606    16445 &   repayment_entity repayment_entity_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.repayment_entity
    ADD CONSTRAINT repayment_entity_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.repayment_entity DROP CONSTRAINT repayment_entity_pkey;
       public            database_d93k_user    false    226            �           2606    16454    spending spending_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT spending_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.spending DROP CONSTRAINT spending_pkey;
       public            database_d93k_user    false    228            �           2606    16485 $   spending fk2iba0h4ea6mntn6e092801ow4    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fk2iba0h4ea6mntn6e092801ow4 FOREIGN KEY (credit_status_id) REFERENCES public.credit_status(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fk2iba0h4ea6mntn6e092801ow4;
       public          database_d93k_user    false    220    228    3249            �           2606    16490 $   spending fk3a98vob97nij32bkajajvwosr    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fk3a98vob97nij32bkajajvwosr FOREIGN KEY (purpose_id) REFERENCES public.purpose(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fk3a98vob97nij32bkajajvwosr;
       public          database_d93k_user    false    228    224    3253            �           2606    16455 )   credit_entity fk3f2mk5cv5g60qys58jmjg9dnq    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_entity
    ADD CONSTRAINT fk3f2mk5cv5g60qys58jmjg9dnq FOREIGN KEY (creditor_account_id) REFERENCES public.account(id);
 S   ALTER TABLE ONLY public.credit_entity DROP CONSTRAINT fk3f2mk5cv5g60qys58jmjg9dnq;
       public          database_d93k_user    false    3245    218    216            �           2606    16460 )   credit_entity fk3ih8yrdwkihoj10smnnecnsou    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_entity
    ADD CONSTRAINT fk3ih8yrdwkihoj10smnnecnsou FOREIGN KEY (debtor_account_id) REFERENCES public.account(id);
 S   ALTER TABLE ONLY public.credit_entity DROP CONSTRAINT fk3ih8yrdwkihoj10smnnecnsou;
       public          database_d93k_user    false    216    3245    218            �           2606    16470 ,   repayment_entity fk53ve4r1r9ibq03em5unym2oyt    FK CONSTRAINT     �   ALTER TABLE ONLY public.repayment_entity
    ADD CONSTRAINT fk53ve4r1r9ibq03em5unym2oyt FOREIGN KEY (creditor_account_id) REFERENCES public.account(id);
 V   ALTER TABLE ONLY public.repayment_entity DROP CONSTRAINT fk53ve4r1r9ibq03em5unym2oyt;
       public          database_d93k_user    false    226    3245    216            �           2606    16475 ,   repayment_entity fk70gp3rj3n5r6p8k5sl0te4kij    FK CONSTRAINT     �   ALTER TABLE ONLY public.repayment_entity
    ADD CONSTRAINT fk70gp3rj3n5r6p8k5sl0te4kij FOREIGN KEY (debtor_account_id) REFERENCES public.account(id);
 V   ALTER TABLE ONLY public.repayment_entity DROP CONSTRAINT fk70gp3rj3n5r6p8k5sl0te4kij;
       public          database_d93k_user    false    216    226    3245            �           2606    16480 $   spending fkjik2jv7tn58j0nega59cdot7j    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fkjik2jv7tn58j0nega59cdot7j FOREIGN KEY (account_id) REFERENCES public.account(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fkjik2jv7tn58j0nega59cdot7j;
       public          database_d93k_user    false    3245    216    228            �           2606    16465 $   deposite fkmgeu16sxvxd0kxmmslisfl49i    FK CONSTRAINT     �   ALTER TABLE ONLY public.deposite
    ADD CONSTRAINT fkmgeu16sxvxd0kxmmslisfl49i FOREIGN KEY (account_id) REFERENCES public.account(id);
 N   ALTER TABLE ONLY public.deposite DROP CONSTRAINT fkmgeu16sxvxd0kxmmslisfl49i;
       public          database_d93k_user    false    3245    222    216                       826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     Y   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO database_d93k_user;
                   postgres    false                       826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     U   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO database_d93k_user;
                   postgres    false                       826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     Y   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO database_d93k_user;
                   postgres    false                       826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     V   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO database_d93k_user;
                   postgres    false            R   Q   x�3�4 CO?Nϼ�������Լ����4� G_�P?O.#���  r�s��sGSaU�����������&F��� �/K      T   &   x�3�410�4202�50�50�q@�ӐӘ+F��� �      V   6   x�3�44��N��,�2�42�tJM�P�K���/�2�46�t��+�I-����� ��      X   z  x�e�MN1��� �d�l�s6E��B�*B�F����d2�˦���7���z�r�+K�RVx| �fO���IL��tM4!�<D��Q�C2��wF+�b� /bE5��ð7��ԧPZ�7s�)���QoJ�Ҟ��xM4ك,*�Q���Ң�(�|�f,�]�0����
��.��[6���t�̾e3����b_��~g�y_�p��ܣV�k6#�͉��57�l��cw��!R@{�eEP��c�;��&���5��nX,�A&^K�fi���)�p��O\�IU�n��)��������^�����#���h�6���&�B�s8m��^wo��G��u�;�i&��r�m��X����Bޖj��lJ����x;M�/	��      Z   �   x�]�MN�0��3���]Ը�?��*D)�+6&�P#��N���a�E�x��|���\�� ��{B��sv����
�٩$�^��-�y!�jOʳ��^iϸ`wz8�����M�L�ʓ}7&���^�eT�hl#m��p���������;����Ob%knp�O�b}��3P�Li��س5����8��:�4z�@5�2�\�*59�M� ��T��_j?�Z �/��Vh      \       x�3�440�4202�5 "CNCNc�=... 8�      ^   r  x�mU�n�H<��bnI��7����CY`�c.#i$����	�Z�;�c[MQ�$�0@jT]��]ղL	eS�Qj[�3|�d۸�#�����?y��c�oǨ�א�m��y
A���]շ\��I���4bcֲ��Z&%�����R�Kڶ�]�ƉN��O�K>���K%��s���04u�÷Ѝ|L������~�﹣GK����q�������E)Q��p�14<C�vqn�)q���R��HW�
{�~�Ua�B�U1��L��!�	,W}��j��f_>^��r]����I#	� �\�%����o�D畦�o�p���
\���E�+�]�C�Je�ޝ��Vt�r�.��0L�'�j�<w~��vU[����
U^
�l�Ss����-hЏ&ާ�aXDS,4�5�D��<��h�U��>�uw��i0��ShB[�Y��cL���,T]ˡ�Jc���´N�c?������+A�Аe9t��k��U�F8:�����X����D��yi�+��d}��Q38pק��n&Yd��k+7C�L��ӯ�Do|��������4�O�0�S"�.��ns'�Z�*r9�k!>l�*��jN�|�#�����h-�KhK�2�)��OF�Ͼ��S�3��W���,�(^,�3��ڬ��B�O$@��a^3q�%�M}�U�[;dZ,�Z��<{H�Dx�����'1��!Q[v��9���	�9�,�9�&��{a�	���;����JS��T]x�s�F,�$��T�V-������	y�yՎ�F��+������=�t�#��0FR�;��{�_��y�]]]���*+,0u�C��j2�i���
��"���'�d����,�z     