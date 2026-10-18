.class public final Lcom/tencent/qimei/ac/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ac/m;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ac/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ac/k;->a:Lcom/tencent/qimei/ac/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ac/k;->a:Lcom/tencent/qimei/ac/m;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
