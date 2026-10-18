.class final Lcom/uqm/crashsight/proguard/af$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/proguard/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/proguard/af;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/proguard/af;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/uqm/crashsight/proguard/af$1;->a:Lcom/uqm/crashsight/proguard/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/af$1;->a:Lcom/uqm/crashsight/proguard/af;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/af;->b(Lcom/uqm/crashsight/proguard/af;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/af$1;->a:Lcom/uqm/crashsight/proguard/af;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/af;->a(Lcom/uqm/crashsight/proguard/af;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
