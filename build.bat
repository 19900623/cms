@echo off
color 66

echo =======================================
echo = Ops Cms .NET ! ���ĳ������ɹ��� =
echo =======================================


set dir=%~dp0
set megdir=%dir%\refrence.dll\

if exist "%megdir%ILMerge.exe" (

  echo ������,���Ե�...
  cd %dir%bin\

echo  /keyfile:%dir%\Source_Code\Spc.Core\ops.cms.snk>nul

"%megdir%ILMerge.exe" /ndebug /targetplatform:v4 /target:dll /out:%dir%dist\ops.cms.dll^
 Ops.Cms.Core.dll Spc.BLL.dll Spc.DAL.dll Ops.Cms.Domain.Interface.dll^
 Ops.Cms.CacheService.dll Ops.Cms.DataTransfer.dll Ops.Cms.Domain.Implement.Content.dll^
 Ops.Cms.DB.dll Ops.Cms.Cache.dll^
 Ops.Cms.Domain.Implement.Site.dll Ops.Cms.Infrastructure.dll Ops.Cms.Service.dll Ops.Cms.ServiceContract.dll^
 Ops.Cms.ServiceUtil.dll Ops.Cms.ServiceRepository.dll Spc.IDAL.dll^
 Spc.Sql.dll Ops.Cms.Utility.dll StructureMap.dll Ops.Cms.Web.dll opscore.dll 



  echo ���!�����:%dir%dist\ops.cms.dll

)


pause