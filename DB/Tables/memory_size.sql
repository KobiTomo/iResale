PGDMP  !                    |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    16505    memory_size    TABLE     �   CREATE TABLE public.memory_size (
    memory_id integer NOT NULL,
    iphone_id integer,
    memory_size character varying(50) NOT NULL
);
    DROP TABLE public.memory_size;
       public         heap    postgres    false            �            1259    16508    memory_size_memory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.memory_size_memory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.memory_size_memory_id_seq;
       public          postgres    false    221                       0    0    memory_size_memory_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.memory_size_memory_id_seq OWNED BY public.memory_size.memory_id;
          public          postgres    false    222            g           2604    16526    memory_size memory_id    DEFAULT     ~   ALTER TABLE ONLY public.memory_size ALTER COLUMN memory_id SET DEFAULT nextval('public.memory_size_memory_id_seq'::regclass);
 D   ALTER TABLE public.memory_size ALTER COLUMN memory_id DROP DEFAULT;
       public          postgres    false    222    221            �          0    16505    memory_size 
   TABLE DATA           H   COPY public.memory_size (memory_id, iphone_id, memory_size) FROM stdin;
    public          postgres    false    221   �                  0    0    memory_size_memory_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.memory_size_memory_id_seq', 60, true);
          public          postgres    false    222            i           2606    16536    memory_size memory_size_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.memory_size
    ADD CONSTRAINT memory_size_pkey PRIMARY KEY (memory_id);
 F   ALTER TABLE ONLY public.memory_size DROP CONSTRAINT memory_size_pkey;
       public            postgres    false    221            j           2606    16553 &   memory_size memory_size_iphone_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.memory_size
    ADD CONSTRAINT memory_size_iphone_id_fkey FOREIGN KEY (iphone_id) REFERENCES public.iphone(iphone_id);
 P   ALTER TABLE ONLY public.memory_size DROP CONSTRAINT memory_size_iphone_id_fkey;
       public          postgres    false    221            �   �   x�5�;�1c�0�}R'{	��n�&r��3�UT��X,����(@.�n@�(�@W�B�JU��I0G�G+�V�2�g7��#��UnX������|�@�.�y��/ �-xp�O2�7�vLJgj2/͒�L�x2�|�v��lg'�9�t����H.�5���c������B$��^�l^]8�,��*6��hr9a�t��/<<�N$�Y�S�'�/'���\�5^�
߿�y~Ls�     