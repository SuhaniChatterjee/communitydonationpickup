-- Fix infinite recursion by removing the problematic admin policy
-- The "Enable read access for authenticated users" policy already allows all reads
DROP POLICY IF EXISTS "Admins can view all profiles" ON public.profiles;