PGDMP  %    8                |            database_d93k    16.2 (Debian 16.2-1.pgdg120+2)    16.2 J    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    16389    database_d93k    DATABASE     x   CREATE DATABASE database_d93k WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE database_d93k;
                database_d93k_user    false            o           0    0    database_d93k    DATABASE PROPERTIES     6   ALTER DATABASE database_d93k SET "TimeZone" TO 'utc';
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
       public          database_d93k_user    false    5    216            p           0    0    account_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.account_id_seq OWNED BY public.account.id;
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
       public          database_d93k_user    false    5    218            q           0    0    credit_entity_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.credit_entity_id_seq OWNED BY public.credit_entity.id;
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
       public          database_d93k_user    false    220    5            r           0    0    credit_status_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.credit_status_id_seq OWNED BY public.credit_status.id;
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
       public          database_d93k_user    false    222    5            s           0    0    deposite_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.deposite_id_seq OWNED BY public.deposite.id;
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
       public          database_d93k_user    false    224    5            t           0    0    purpose_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.purpose_id_seq OWNED BY public.purpose.id;
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
       public          database_d93k_user    false    226    5            u           0    0    repayment_entity_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.repayment_entity_id_seq OWNED BY public.repayment_entity.id;
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
       public          database_d93k_user    false    5    228            v           0    0    spending_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.spending_id_seq OWNED BY public.spending.id;
          public          database_d93k_user    false    227            �            1259    16596    user_entity    TABLE     �   CREATE TABLE public.user_entity (
    id bigint NOT NULL,
    login character varying(255),
    name character varying(255),
    pass character varying(255),
    surname character varying(255)
);
    DROP TABLE public.user_entity;
       public         heap    database_d93k_user    false    5            �            1259    16595    user_entity_id_seq    SEQUENCE     {   CREATE SEQUENCE public.user_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_entity_id_seq;
       public          database_d93k_user    false    230    5            w           0    0    user_entity_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_entity_id_seq OWNED BY public.user_entity.id;
          public          database_d93k_user    false    229            �           2604    16400 
   account id    DEFAULT     h   ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public.account_id_seq'::regclass);
 9   ALTER TABLE public.account ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    215    216    216            �           2604    16409    credit_entity id    DEFAULT     t   ALTER TABLE ONLY public.credit_entity ALTER COLUMN id SET DEFAULT nextval('public.credit_entity_id_seq'::regclass);
 ?   ALTER TABLE public.credit_entity ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    218    217    218            �           2604    16416    credit_status id    DEFAULT     t   ALTER TABLE ONLY public.credit_status ALTER COLUMN id SET DEFAULT nextval('public.credit_status_id_seq'::regclass);
 ?   ALTER TABLE public.credit_status ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    219    220    220            �           2604    16425    deposite id    DEFAULT     j   ALTER TABLE ONLY public.deposite ALTER COLUMN id SET DEFAULT nextval('public.deposite_id_seq'::regclass);
 :   ALTER TABLE public.deposite ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    222    221    222            �           2604    16434 
   purpose id    DEFAULT     h   ALTER TABLE ONLY public.purpose ALTER COLUMN id SET DEFAULT nextval('public.purpose_id_seq'::regclass);
 9   ALTER TABLE public.purpose ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    223    224    224            �           2604    16443    repayment_entity id    DEFAULT     z   ALTER TABLE ONLY public.repayment_entity ALTER COLUMN id SET DEFAULT nextval('public.repayment_entity_id_seq'::regclass);
 B   ALTER TABLE public.repayment_entity ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    225    226    226            �           2604    16450    spending id    DEFAULT     j   ALTER TABLE ONLY public.spending ALTER COLUMN id SET DEFAULT nextval('public.spending_id_seq'::regclass);
 :   ALTER TABLE public.spending ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    228    227    228            �           2604    16599    user_entity id    DEFAULT     p   ALTER TABLE ONLY public.user_entity ALTER COLUMN id SET DEFAULT nextval('public.user_entity_id_seq'::regclass);
 =   ALTER TABLE public.user_entity ALTER COLUMN id DROP DEFAULT;
       public          database_d93k_user    false    229    230    230            Z          0    16397    account 
   TABLE DATA           k   COPY public.account (id, amount_rest, amountbalance, amountconsumed, code, description, owner) FROM stdin;
    public          database_d93k_user    false    216   !X       \          0    16406    credit_entity 
   TABLE DATA           �   COPY public.credit_entity (id, amount, end_date, interest_rate, start_date, creditor_account_id, debtor_account_id) FROM stdin;
    public          database_d93k_user    false    218   �X       ^          0    16413    credit_status 
   TABLE DATA           >   COPY public.credit_status (id, code, description) FROM stdin;
    public          database_d93k_user    false    220   �X       `          0    16422    deposite 
   TABLE DATA           `   COPY public.deposite (id, action_date, amount_to_deposite, code, notes, account_id) FROM stdin;
    public          database_d93k_user    false    222   �X       b          0    16431    purpose 
   TABLE DATA           G   COPY public.purpose (id, code, default_price, description) FROM stdin;
    public          database_d93k_user    false    224   B[       d          0    16440    repayment_entity 
   TABLE DATA           u   COPY public.repayment_entity (id, amount_repaid, repayment_date, creditor_account_id, debtor_account_id) FROM stdin;
    public          database_d93k_user    false    226   \\       f          0    16447    spending 
   TABLE DATA           {   COPY public.spending (id, action_date, amount_to_spend, code, notes, account_id, credit_status_id, purpose_id) FROM stdin;
    public          database_d93k_user    false    228   �\       h          0    16596    user_entity 
   TABLE DATA           E   COPY public.user_entity (id, login, name, pass, surname) FROM stdin;
    public          database_d93k_user    false    230   �c       x           0    0    account_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.account_id_seq', 3, true);
          public          database_d93k_user    false    215            y           0    0    credit_entity_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.credit_entity_id_seq', 1, true);
          public          database_d93k_user    false    217            z           0    0    credit_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.credit_status_id_seq', 8, true);
          public          database_d93k_user    false    219            {           0    0    deposite_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.deposite_id_seq', 15, true);
          public          database_d93k_user    false    221            |           0    0    purpose_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.purpose_id_seq', 11, true);
          public          database_d93k_user    false    223            }           0    0    repayment_entity_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.repayment_entity_id_seq', 3, true);
          public          database_d93k_user    false    225            ~           0    0    spending_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.spending_id_seq', 60, true);
          public          database_d93k_user    false    227                       0    0    user_entity_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_entity_id_seq', 1, true);
          public          database_d93k_user    false    229            �           2606    16404    account account_pkey 
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
       public            database_d93k_user    false    228            �           2606    16603    user_entity user_entity_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT user_entity_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT user_entity_pkey;
       public            database_d93k_user    false    230            �           2606    16485 $   spending fk2iba0h4ea6mntn6e092801ow4    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fk2iba0h4ea6mntn6e092801ow4 FOREIGN KEY (credit_status_id) REFERENCES public.credit_status(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fk2iba0h4ea6mntn6e092801ow4;
       public          database_d93k_user    false    3255    220    228            �           2606    16490 $   spending fk3a98vob97nij32bkajajvwosr    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fk3a98vob97nij32bkajajvwosr FOREIGN KEY (purpose_id) REFERENCES public.purpose(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fk3a98vob97nij32bkajajvwosr;
       public          database_d93k_user    false    224    3259    228            �           2606    16455 )   credit_entity fk3f2mk5cv5g60qys58jmjg9dnq    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_entity
    ADD CONSTRAINT fk3f2mk5cv5g60qys58jmjg9dnq FOREIGN KEY (creditor_account_id) REFERENCES public.account(id);
 S   ALTER TABLE ONLY public.credit_entity DROP CONSTRAINT fk3f2mk5cv5g60qys58jmjg9dnq;
       public          database_d93k_user    false    218    3251    216            �           2606    16460 )   credit_entity fk3ih8yrdwkihoj10smnnecnsou    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_entity
    ADD CONSTRAINT fk3ih8yrdwkihoj10smnnecnsou FOREIGN KEY (debtor_account_id) REFERENCES public.account(id);
 S   ALTER TABLE ONLY public.credit_entity DROP CONSTRAINT fk3ih8yrdwkihoj10smnnecnsou;
       public          database_d93k_user    false    216    218    3251            �           2606    16470 ,   repayment_entity fk53ve4r1r9ibq03em5unym2oyt    FK CONSTRAINT     �   ALTER TABLE ONLY public.repayment_entity
    ADD CONSTRAINT fk53ve4r1r9ibq03em5unym2oyt FOREIGN KEY (creditor_account_id) REFERENCES public.account(id);
 V   ALTER TABLE ONLY public.repayment_entity DROP CONSTRAINT fk53ve4r1r9ibq03em5unym2oyt;
       public          database_d93k_user    false    226    3251    216            �           2606    16475 ,   repayment_entity fk70gp3rj3n5r6p8k5sl0te4kij    FK CONSTRAINT     �   ALTER TABLE ONLY public.repayment_entity
    ADD CONSTRAINT fk70gp3rj3n5r6p8k5sl0te4kij FOREIGN KEY (debtor_account_id) REFERENCES public.account(id);
 V   ALTER TABLE ONLY public.repayment_entity DROP CONSTRAINT fk70gp3rj3n5r6p8k5sl0te4kij;
       public          database_d93k_user    false    216    3251    226            �           2606    16480 $   spending fkjik2jv7tn58j0nega59cdot7j    FK CONSTRAINT     �   ALTER TABLE ONLY public.spending
    ADD CONSTRAINT fkjik2jv7tn58j0nega59cdot7j FOREIGN KEY (account_id) REFERENCES public.account(id);
 N   ALTER TABLE ONLY public.spending DROP CONSTRAINT fkjik2jv7tn58j0nega59cdot7j;
       public          database_d93k_user    false    3251    216    228            �           2606    16465 $   deposite fkmgeu16sxvxd0kxmmslisfl49i    FK CONSTRAINT     �   ALTER TABLE ONLY public.deposite
    ADD CONSTRAINT fkmgeu16sxvxd0kxmmslisfl49i FOREIGN KEY (account_id) REFERENCES public.account(id);
 N   ALTER TABLE ONLY public.deposite DROP CONSTRAINT fkmgeu16sxvxd0kxmmslisfl49i;
       public          database_d93k_user    false    222    3251    216                       826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     Y   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO database_d93k_user;
                   postgres    false                       826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     U   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO database_d93k_user;
                   postgres    false                       826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     Y   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO database_d93k_user;
                   postgres    false                       826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     V   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO database_d93k_user;
                   postgres    false            Z   Q   x�3�4 CO?Nϼ�������Լ����4� G_�P?O.#���  r�s��sGSaU�����������&F��� �/K      \   &   x�3�410�4202�50�50�q@�ӐӘ+F��� �      ^   6   x�3�44��N��,�2�42�tJM�P�K���/�2�46�t��+�I-����� ��      `   4  x���Kn�0���)x˜_ۮ�d��.��I��E�ި���:Cǔ@��q��C	!8Ȼ@� >@XAKpY���7�;�$�Ǳ4��7�#��� ��XYh�L������􇓸R<Rd����;%�c�r���#�U�hTg�Ȉ�����Щ<R�Jl� ���H�
�E9�(#U*eG��
�=�Q�ӄ�'�Qw
U'G�0v�`^)�V|A��(<��ف)A�tlT^1s�͇��0*�]Sq�^!�V='��(=�qKS"�J��+E��ƒ�,�7�jAN݂xӞ�����%�QH��#+��U�B����?��şO��<<�.���?����==.ޫ���[~��?_�?�����>�������t��]�5(m!y]H�.Um`t���q�)'���Ji.	�l��A6����������~�����	3��!$��L}?68�9���E������)n�5�a�m��fP��f����pа/﯏^Z�����/�c9/>���}=�[D#f}T�rmӶ�[��g����P=܊�!E}�栏�mn.m�p���@f2W�*%1���y���?�      b   
  x�]�MN�0��3���]��?�(�F�R$BWlL;!FMl�w�\�IS������Ӽ7#S~��@A��P��|�9����MJ6�X����W�^iP*ѐE�|mlJ���m���گ�I�MO8�:ی'nM�n�q1i�H�!Pw`��8x����+�	[��$Z�nO$���p�G�d��# �@�����>r΃k�H�xc�3�hٵ�.��3��C���IV�?WcĪxz-x2��������� 2}\��P��%�Sl�-A�_,Hc      d   0   x�3�440�4202�5 "CNCNc.#Ac��1�����%X0F��� n�
i      f   C  x�mW�n�F=��"�4-�r_�^ ���}�(��H�Œ������l^$��R%�-223�-A���	s�$�.1"s�1-�Q���+�L2/��F�9>rsis�3l���x$��P\$ϭɬL
�B��ŧB����:�WB�r���)��M>�r�3��N��
�n7sx�"���
�sH陗��//wU��������J��n3�܆�K���z�Q"֟c%�)s+s��$�,�����W���ƅ�N�i��4~pV�O�c�S]���|_�����S�}����=��wC-U�k\�!�N����̵��¤�f1�⍲]��mo���D��������C[$3��v�cq�מ�E��+�f:�{�x�QwG/���muz�����bI8�8�,����/��:���Ry�-�u�W� �Ʊ���dߕ���?���=�<4j<�\'�\Ʉ'9@�y%�"D2i䄛gR]O�cچm�ކ+���t̆���p�K��b�E��$*�Y���q���@� �����E����ΟХrw�����J*�C�l橸�X<�=��@�~9��mW4�o�$T�i$
V�L(�Q�v�뇗�n�ğ��0���ož8�<���RuO��J[�p�\itj� L�${nO��_ɉ���Y恣2��K�k����e�o�Qo�?�p����jHͥ�B�C����8�9ꭓ����ʈ�L_ Y��"�Ѫ�G�k�v���, k	<!*�ֵ(w�������E?���?�K��ݻ%�t8gT�<�x�"����!&����MR?�`����/�u�
S�!��ZB礎����f&�D8���������D�L�
�ZVSϖ�8�1��ɭȒaJ��qet�~Sݝ�$���I�����	s� � u҉�,��O��u���>�P�(��������L���YPC��E�����e��v1%S�&G���H?��%��8�Q*���|" �2D��cE��l���.Z�V�����+��*���؞�����\@z��PGC�H$�������k�t�)��Lb�%��g`��}�gH���k`��8���t:�_���M +0��N*�29 �<���0�]��������TT��,f��x�)��n�6�͵����id܆�ZeNQ����X��!bŐ�̃���~M��KW�1��k��fqp�L�т�<iN��!SH��<uT��|I��ԛ�����0M�	��$f��R���*hrwZ�oja}Dr:��q+����-��M�4C`�r�sU��� L@1)�D�.�hMS4������Y]�\*�1u����&�����ϰ��]�"3B�5ޟ%&�~|��G����VüO��0�c�,�z�\Ňd�.Ә�4́��������7�U~$;A%�5�et��L��|�]�G�Έ�*�H���PR=��A��������������%�������k[���ZJ��=	��D'�v��r��"a\1��9�-h�}:6����φt6t2�54<������W$Y�O9��&XN0�=wypZ��ax6�n��>�U	������L�yYt}u�����G1!�#�zc�z9 �/�;MG�T�祙6��s�⎔�_㨚HО�2v�ݢ�ȎkLG��v�]��C;����)�˲���gGe�-×l1�Nsq�&ҬE&Ks=��]�-����
=�V���*���xO���0�[��>/ ��L ��pD: x�.k��a�H�Q֧�Bc���u��|0���3	 t��q2�l�S��S��i�(dd�9�{vss��"�      h   (   x�3�,N�L��y�Ɖy���E�E��@~&W� �@�     