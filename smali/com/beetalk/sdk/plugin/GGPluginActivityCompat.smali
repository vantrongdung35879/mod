.class public Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GGPluginActivityCompat.java"


# instance fields
.field private mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

.field private mPluginId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPlugin(Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;)Lcom/beetalk/sdk/plugin/GGPlugin;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static startWithPlugin(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-class v1, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "plugin_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugin_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->mPluginId:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->mPluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    .line 63
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/plugin/GGPlugin;->setActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;-><init>(Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;)V

    const-wide/16 v1, 0x8c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
