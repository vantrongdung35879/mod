.class Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;
.super Ljava/lang/Object;
.source "GGPluginActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;

    invoke-static {v1}, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;->-$$Nest$fgetmPlugin(Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginActivityCompat$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivityCompat;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->realExecute(Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V

    return-void
.end method
