PGDMP      .        	        |            trabJava    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    trabJava    DATABASE     �   CREATE DATABASE "trabJava" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "trabJava";
                postgres    false            �            1259    16400    agendamentos    TABLE     �   CREATE TABLE public.agendamentos (
    id integer NOT NULL,
    cliente character varying(100) NOT NULL,
    data date NOT NULL,
    horario time without time zone NOT NULL,
    servico character varying(100) NOT NULL
);
     DROP TABLE public.agendamentos;
       public         heap    postgres    false            �            1259    16399    agendamentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.agendamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.agendamentos_id_seq;
       public          postgres    false    216            �           0    0    agendamentos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.agendamentos_id_seq OWNED BY public.agendamentos.id;
          public          postgres    false    215            �            1259    16423    estoques    TABLE     �   CREATE TABLE public.estoques (
    id bigint NOT NULL,
    produto character varying(255) NOT NULL,
    quantidade integer NOT NULL,
    preco numeric(10,2) NOT NULL
);
    DROP TABLE public.estoques;
       public         heap    postgres    false            �            1259    16422    estoques_id_seq    SEQUENCE     x   CREATE SEQUENCE public.estoques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.estoques_id_seq;
       public          postgres    false    219            �           0    0    estoques_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.estoques_id_seq OWNED BY public.estoques.id;
          public          postgres    false    218            �            1259    16413    flyway_schema_history    TABLE     �  CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);
 )   DROP TABLE public.flyway_schema_history;
       public         heap    postgres    false            Y           2604    16403    agendamentos id    DEFAULT     r   ALTER TABLE ONLY public.agendamentos ALTER COLUMN id SET DEFAULT nextval('public.agendamentos_id_seq'::regclass);
 >   ALTER TABLE public.agendamentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            [           2604    16426    estoques id    DEFAULT     j   ALTER TABLE ONLY public.estoques ALTER COLUMN id SET DEFAULT nextval('public.estoques_id_seq'::regclass);
 :   ALTER TABLE public.estoques ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �          0    16400    agendamentos 
   TABLE DATA           K   COPY public.agendamentos (id, cliente, data, horario, servico) FROM stdin;
    public          postgres    false    216   %       �          0    16423    estoques 
   TABLE DATA           B   COPY public.estoques (id, produto, quantidade, preco) FROM stdin;
    public          postgres    false    219   �       �          0    16413    flyway_schema_history 
   TABLE DATA           �   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public          postgres    false    217   �       �           0    0    agendamentos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.agendamentos_id_seq', 12, true);
          public          postgres    false    215                        0    0    estoques_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.estoques_id_seq', 7, true);
          public          postgres    false    218            ]           2606    16405    agendamentos agendamentos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT agendamentos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT agendamentos_pkey;
       public            postgres    false    216            b           2606    16428    estoques estoques_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.estoques
    ADD CONSTRAINT estoques_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.estoques DROP CONSTRAINT estoques_pkey;
       public            postgres    false    219            _           2606    16420 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public            postgres    false    217            `           1259    16421    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public            postgres    false    217            �   e   x�3���?�8_!83�,�����D��T�Ȑ����������9��$U!%U�91)5'�˔ӽ43'#�(7���� ��)�()�����$�,M�V3c���� *$      �   3   x�3��H�-���45�44ճ��2�t��K�L���KL�/KX�$b���� ICC      �   \   x�3�4䴱Qp˩,O�TpJ,N���KU���trv���s�!��Y�_\�^�Z�id`d�k`�kd�`hiehbeb�gji`n`�i�Y����� +q     