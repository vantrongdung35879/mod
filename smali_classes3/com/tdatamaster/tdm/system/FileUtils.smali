.class public Lcom/tdatamaster/tdm/system/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final MSDK_SHARE_PREFERENCE_FILE_NAME:Ljava/lang/String; = "tdm"

.field private static mInstance:Lcom/tdatamaster/tdm/system/FileUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/tdatamaster/tdm/system/FileUtils;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/FileUtils;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/system/FileUtils;->mInstance:Lcom/tdatamaster/tdm/system/FileUtils;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    return-void
.end method

.method private native FileUtilsInit()V
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;
    .locals 1

    .line 31
    sget-object v0, Lcom/tdatamaster/tdm/system/FileUtils;->mInstance:Lcom/tdatamaster/tdm/system/FileUtils;

    return-object v0
.end method


# virtual methods
.method public DeleteSharePreference(Ljava/lang/String;Z)V
    .locals 1

    .line 145
    iget-boolean p2, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    const-string v0, "TDM"

    if-nez p2, :cond_0

    .line 146
    const-string p1, "FileUtils need Initialize"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    iget-object p2, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 157
    :cond_1
    const-string p1, "mContext is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public DeleteSharePreference(Z)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v0, :cond_0

    .line 137
    const-string p1, "TDM"

    const-string v0, "FileUtils need Initialize"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    const-string/jumbo v0, "tdm"

    invoke-virtual {p0, v0, p1}, Lcom/tdatamaster/tdm/system/FileUtils;->DeleteSharePreference(Ljava/lang/String;Z)V

    return-void
.end method

.method public DeleteSharePreferenceItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 119
    iget-boolean p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    const-string v0, "TDM"

    if-nez p3, :cond_0

    .line 120
    const-string p1, "FileUtils need Initialize"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 131
    :cond_1
    const-string p1, "mContext is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public DeleteSharePreferenceItem(Ljava/lang/String;Z)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v0, :cond_0

    .line 111
    const-string p1, "TDM"

    const-string p2, "FileUtils need Initialize"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    const-string/jumbo v0, "tdm"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tdatamaster/tdm/system/FileUtils;->DeleteSharePreferenceItem(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public native GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public GetSharePreferenceByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 94
    iget-boolean p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    const-string v0, "TDM"

    const-string v1, ""

    if-nez p3, :cond_0

    .line 95
    const-string p1, "FileUtils need Initialize"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 99
    :cond_0
    iget-object p3, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 101
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    const-string p1, "mContext is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public GetSharePreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v0, :cond_0

    .line 87
    const-string p1, "TDM"

    const-string p2, "FileUtils need Initialize"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p1, ""

    return-object p1

    .line 90
    :cond_0
    const-string/jumbo v0, "tdm"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tdatamaster/tdm/system/FileUtils;->GetSharePreferenceByKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 2

    .line 36
    const-string v0, "TDM"

    if-nez p1, :cond_0

    .line 38
    const-string p1, "context is null. initialize failed!"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    iget-boolean v1, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/tdatamaster/tdm/system/FileUtils;->FileUtilsInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public SetSharePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 66
    iget-boolean p4, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    const-string v0, "TDM"

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 67
    const-string p1, "FileUtils need Initialize"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 71
    :cond_0
    iget-object p4, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_1

    .line 72
    invoke-virtual {p4, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 75
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_1
    const-string p1, "mContext is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public SetSharePreference(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/FileUtils;->mInitialized:Z

    if-nez v0, :cond_0

    .line 59
    const-string p1, "TDM"

    const-string p2, "FileUtils need Initialize"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    const-string/jumbo v0, "tdm"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tdatamaster/tdm/system/FileUtils;->SetSharePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
