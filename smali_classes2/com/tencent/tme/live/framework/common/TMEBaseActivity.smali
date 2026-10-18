.class public abstract Lcom/tencent/tme/live/framework/common/TMEBaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/tme/live/w2/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/tencent/tme/live/w2/c;

.field public final c:Lcom/tencent/tme/live/o2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/o2/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "TMEBaseActivity"

    iput-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity$a;-><init>(Lcom/tencent/tme/live/framework/common/TMEBaseActivity;)V

    iput-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->c:Lcom/tencent/tme/live/o2/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/w2/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->b:Lcom/tencent/tme/live/w2/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/live/w2/c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/w2/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->b:Lcom/tencent/tme/live/w2/c;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->b:Lcom/tencent/tme/live/w2/c;

    return-object v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    iget v0, v0, Lcom/tencent/tme/live/framework/common/b;->p:I

    sget-object v1, Lcom/tencent/tme/live/b1/g;->a:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/tencent/tme/live/b1/g;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 5
    :goto_0
    sget v4, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    :cond_2
    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 6
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public abstract b()I
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "onActivityResult"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBackPressed"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->getResources()Landroid/content/res/Resources;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/tencent/tme/live/v0/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v2, "mActivityInfo"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    const/4 v5, -0x1

    iput v5, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "onCreate fixOrientation when Oreo, result = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v2, 0x1c

    const/4 v5, 0x2

    if-lt v0, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, v1, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->c:Lcom/tencent/tme/live/o2/c;

    const-string v2, "liveSdkExit"

    invoke-static {v2, v0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    sget-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    .line 5
    const-string v0, "onCreate is called:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cmActivityTaskSize\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "LifecycleTaskManager"

    invoke-static {v6, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    sget-object v0, Lcom/tencent/tme/live/v0/j;->b:Lcom/tencent/tme/live/v0/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/tme/live/framework/common/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/framework/common/a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/v0/j;->b:Lcom/tencent/tme/live/v0/i;

    :cond_2
    sget-object v0, Lcom/tencent/tme/live/v0/j;->b:Lcom/tencent/tme/live/v0/i;

    if-eqz v0, :cond_15

    move-object v6, v0

    check-cast v6, Lcom/tencent/tme/live/framework/common/a;

    .line 7
    invoke-static {}, Lcom/tencent/tme/live/b1/f;->b()Lcom/tencent/tme/live/b1/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x400000

    const/high16 v9, 0x3200000

    const/4 v10, 0x0

    .line 8
    :try_start_1
    new-instance v0, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    .line 9
    iput-boolean v3, v0, Lcom/tencent/tme/live/e0/c$a;->h:Z

    .line 10
    iput-boolean v3, v0, Lcom/tencent/tme/live/e0/c$a;->i:Z

    .line 11
    new-instance v11, Lcom/tencent/tme/live/e0/c;

    .line 12
    invoke-direct {v11, v0}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    .line 13
    invoke-static {v2}, Lcom/tencent/tme/live/b1/n;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v12, Lcom/tencent/tme/live/e0/e$a;

    invoke-direct {v12, v2}, Lcom/tencent/tme/live/e0/e$a;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v13, v12, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    const/4 v14, 0x5

    if-nez v13, :cond_3

    iget-object v13, v12, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    if-eqz v13, :cond_4

    :cond_3
    const-string v13, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    new-array v15, v4, [Ljava/lang/Object;

    .line 15
    invoke-static {v14, v10, v13, v15}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v13, 0x3

    .line 16
    iput v13, v12, Lcom/tencent/tme/live/e0/e$a;->f:I

    .line 17
    iget-object v15, v12, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    if-nez v15, :cond_5

    iget-object v15, v12, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    if-eqz v15, :cond_6

    :cond_5
    const-string v15, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    new-array v8, v4, [Ljava/lang/Object;

    .line 18
    invoke-static {v14, v10, v15, v8}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_6
    iput v13, v12, Lcom/tencent/tme/live/e0/e$a;->g:I

    .line 20
    iput-boolean v3, v12, Lcom/tencent/tme/live/e0/e$a;->h:Z

    .line 21
    new-instance v8, Lcom/tencent/tme/live/d0/c;

    const/high16 v13, 0x200000

    invoke-direct {v8, v13}, Lcom/tencent/tme/live/d0/c;-><init>(I)V

    invoke-virtual {v12, v8}, Lcom/tencent/tme/live/e0/e$a;->a(Lcom/tencent/tme/live/c0/b;)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/tme/live/e0/e$a;->c(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v8

    .line 22
    invoke-virtual {v8, v9}, Lcom/tencent/tme/live/e0/e$a;->b(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v8

    .line 23
    new-instance v13, Lcom/tencent/tme/live/b0/c;

    invoke-direct {v13}, Lcom/tencent/tme/live/b0/c;-><init>()V

    .line 24
    iget-object v15, v8, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    if-eqz v15, :cond_7

    new-array v15, v4, [Ljava/lang/Object;

    .line 25
    const-string v7, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v14, v10, v7, v15}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_7
    iput-object v13, v8, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    .line 27
    iget-object v7, v8, Lcom/tencent/tme/live/e0/e$a;->b:Ljava/util/concurrent/Executor;

    if-nez v7, :cond_8

    iget-object v7, v8, Lcom/tencent/tme/live/e0/e$a;->c:Ljava/util/concurrent/Executor;

    if-eqz v7, :cond_9

    :cond_8
    const-string v7, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    new-array v13, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {v14, v10, v7, v13}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_9
    iput v5, v8, Lcom/tencent/tme/live/e0/e$a;->i:I

    const/16 v5, 0x64

    .line 30
    invoke-virtual {v8, v5}, Lcom/tencent/tme/live/e0/e$a;->a(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v7

    .line 31
    new-instance v5, Lcom/tencent/tme/live/z/b;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z/b;-><init>(Ljava/io/File;)V

    .line 32
    iget-wide v9, v7, Lcom/tencent/tme/live/e0/e$a;->k:J

    const-wide/16 v16, 0x0

    cmp-long v0, v9, v16

    if-gtz v0, :cond_b

    iget v0, v7, Lcom/tencent/tme/live/e0/e$a;->l:I

    if-lez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v10, 0x0

    goto :goto_2

    :cond_b
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 33
    const-string v9, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v10, 0x0

    invoke-static {v14, v10, v9, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_2
    iget-object v0, v7, Lcom/tencent/tme/live/e0/e$a;->o:Lcom/tencent/tme/live/b0/a;

    if-eqz v0, :cond_c

    new-array v0, v4, [Ljava/lang/Object;

    .line 35
    const-string v9, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v14, v10, v9, v0}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_c
    iput-object v5, v7, Lcom/tencent/tme/live/e0/e$a;->n:Lcom/tencent/tme/live/y/a;

    .line 37
    iput-object v11, v7, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    .line 38
    new-instance v0, Lcom/tencent/tme/live/j0/a;

    const/16 v5, 0x1388

    const/16 v9, 0x7530

    invoke-direct {v0, v2, v5, v9}, Lcom/tencent/tme/live/j0/a;-><init>(Landroid/content/Context;II)V

    .line 39
    iput-object v0, v7, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    .line 40
    invoke-virtual {v12}, Lcom/tencent/tme/live/e0/e$a;->a()Lcom/tencent/tme/live/e0/e;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tme/live/e0/d;->e()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v0, "ImageLoaderUitl"

    const-string v5, "ImageLoader has inited"

    invoke-static {v0, v5}, Lcom/tencent/tme/live/t1/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v5, "ImageLoaderUitl"

    const-string v7, "ImageLoader is initing"

    invoke-static {v5, v7}, Lcom/tencent/tme/live/t1/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/tme/live/e0/d;->a(Lcom/tencent/tme/live/e0/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v5, "ImageLoader init failed : "

    invoke-static {v5}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ImageLoaderUitl"

    const/4 v9, 0x0

    invoke-static {v0, v5, v7, v9}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_3
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iput-object v2, v0, Lcom/tencent/tme/live/c/c;->e:Landroid/content/Context;

    .line 43
    new-instance v5, Lcom/tencent/tme/live/e0/e$a;

    invoke-direct {v5, v2}, Lcom/tencent/tme/live/e0/e$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/tencent/tme/live/d0/b;

    const/high16 v7, 0x1000000

    invoke-direct {v2, v7}, Lcom/tencent/tme/live/d0/b;-><init>(I)V

    invoke-virtual {v5, v2}, Lcom/tencent/tme/live/e0/e$a;->a(Lcom/tencent/tme/live/c0/b;)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/tencent/tme/live/e0/e$a;->c(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v2

    const/high16 v5, 0x3200000

    invoke-virtual {v2, v5}, Lcom/tencent/tme/live/e0/e$a;->b(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/tencent/tme/live/e0/e$a;->a(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tme/live/e0/e$a;->a()Lcom/tencent/tme/live/e0/e;

    move-result-object v2

    .line 44
    iget-object v5, v0, Lcom/tencent/tme/live/c/c;->e:Landroid/content/Context;

    .line 45
    new-instance v7, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    .line 46
    iput-boolean v4, v7, Lcom/tencent/tme/live/e0/c$a;->h:Z

    .line 47
    iput-boolean v3, v7, Lcom/tencent/tme/live/e0/c$a;->i:Z

    .line 48
    new-instance v4, Lcom/tencent/tme/live/e0/c;

    .line 49
    invoke-direct {v4, v7}, Lcom/tencent/tme/live/e0/c;-><init>(Lcom/tencent/tme/live/e0/c$a;)V

    .line 50
    new-instance v7, Lcom/tencent/tme/live/e0/e$a;

    invoke-direct {v7, v5}, Lcom/tencent/tme/live/e0/e$a;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/tencent/tme/live/d0/b;

    const/high16 v10, 0x400000

    invoke-direct {v9, v10}, Lcom/tencent/tme/live/d0/b;-><init>(I)V

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/e0/e$a;->a(Lcom/tencent/tme/live/c0/b;)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/tencent/tme/live/e0/e$a;->c(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v7

    const/high16 v8, 0x3200000

    invoke-virtual {v7, v8}, Lcom/tencent/tme/live/e0/e$a;->b(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/tencent/tme/live/e0/e$a;->a(I)Lcom/tencent/tme/live/e0/e$a;

    move-result-object v7

    new-instance v8, Lcom/tencent/tme/live/d/b;

    invoke-direct {v8, v5}, Lcom/tencent/tme/live/d/b;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v8, v7, Lcom/tencent/tme/live/e0/e$a;->p:Lcom/tencent/tme/live/j0/b;

    .line 52
    iput-object v4, v7, Lcom/tencent/tme/live/e0/e$a;->r:Lcom/tencent/tme/live/e0/c;

    .line 53
    invoke-virtual {v7}, Lcom/tencent/tme/live/e0/e$a;->a()Lcom/tencent/tme/live/e0/e;

    move-result-object v4

    .line 54
    invoke-static {}, Lcom/tencent/tme/live/d/g;->f()Lcom/tencent/tme/live/d/g;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/tme/live/e0/d;->a(Lcom/tencent/tme/live/e0/e;)V

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/e0/d;->a(Lcom/tencent/tme/live/e0/e;)V

    .line 55
    const-class v2, Lcom/tencent/tme/live/i/g;

    monitor-enter v2

    .line 56
    :try_start_2
    sget-object v0, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/tme/live/i/g;

    invoke-direct {v0}, Lcom/tencent/tme/live/i/g;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;

    :cond_e
    sget-object v0, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v2

    .line 57
    invoke-virtual {v0}, Lcom/tencent/tme/live/i/g;->b()V

    const-class v2, Lcom/tencent/tme/live/v0/b;

    monitor-enter v2

    .line 58
    :try_start_3
    sget-object v0, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;

    if-nez v0, :cond_f

    new-instance v0, Lcom/tencent/tme/live/v0/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/v0/b;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;

    :cond_f
    sget-object v0, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/tme/live/v0/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    :cond_10
    const-string v0, "initMinaConnect:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string v2, "clientType="

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/tencent/tme/live/e/a;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isDebug="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/tencent/tme/live/e/a;->c:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",pluginVersion="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/tme/live/e/a;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",domainConn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",domainHttp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",domainReport="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",httpkey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",httpSeq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/tme/live/e/a;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",defaultDecryptKey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",tmeGameId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",authToken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",appid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",openid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",channel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",partition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",platid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",area="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",regionid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->s:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",gameid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",lang="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",gameToken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",loginkit="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",msdkUrlParam="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->y:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",nickName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/e/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v2

    new-instance v4, Lcom/tencent/tme/live/v0/d;

    invoke-direct {v4, v6}, Lcom/tencent/tme/live/v0/d;-><init>(Lcom/tencent/tme/live/framework/common/a;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    const-string v0, "MinaManager init : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v2, Lcom/tencent/tme/live/e/f;->f:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MinaManager"

    invoke-static {v5, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v2, Lcom/tencent/tme/live/e/f;->f:Z

    if-eqz v0, :cond_11

    goto/16 :goto_6

    :cond_11
    iput-boolean v3, v2, Lcom/tencent/tme/live/e/f;->f:Z

    .line 65
    const-class v3, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    monitor-enter v3

    :try_start_4
    const-string v0, "encrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v2, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v2, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/tencent/tme/live/e/f;->j:J

    sget-object v3, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tme/live/s2/h;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Lcom/tencent/tme/live/e/f;->k:I

    :try_start_6
    sget-object v3, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    if-eqz v3, :cond_12

    iget-object v5, v2, Lcom/tencent/tme/live/e/f;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v3, "registerReceiver error : "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "MinaManager"

    const/4 v6, 0x0

    invoke-static {v0, v3, v5, v6}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_5
    iget-object v0, v2, Lcom/tencent/tme/live/e/f;->b:Lcom/tencent/tme/live/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v3

    .line 68
    iget-object v3, v3, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    if-eqz v3, :cond_13

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    :cond_13
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v3

    .line 70
    iget-object v5, v3, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    if-nez v5, :cond_14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    :cond_14
    iget-object v3, v3, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iput-object v4, v0, Lcom/tencent/tme/live/e/i;->a:Lcom/tencent/tme/live/j/b;

    .line 72
    invoke-virtual {v2}, Lcom/tencent/tme/live/e/f;->a()V

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 73
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 74
    :cond_15
    :goto_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addActivity StackSize:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",addActivityHashCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LifecycleTaskManager"

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a:Ljava/lang/String;

    const-string v1, "base onDestroyed is called:"

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onPreDestroy"

    invoke-static {v3, v0, v2}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    .line 1
    const-string v0, "onDestroyed is called:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",hasCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LifecycleTaskManager"

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    const-string v3, "removeActivity weakActHashCode:"

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",removeActivityHashCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LifecycleTaskManager"

    invoke-static {v4, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string v0, "removeActivity StackSize:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",removeActivityHashCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LifecycleTaskManager"

    invoke-static {v3, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onDestroyed  mActivityTaskSize:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LifecycleTaskManager"

    invoke-static {v3, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 4
    sget-object v0, Lcom/tencent/tme/live/v0/j;->b:Lcom/tencent/tme/live/v0/i;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-string v2, "quitCallback"

    .line 6
    const-string v3, "callHostEngine"

    .line 7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v5, "event"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :goto_1
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sput-object v0, Lcom/tencent/tme/live/y0/b;->d:Lcom/tencent/tme/live/y0/b;

    iget-object v3, v2, Lcom/tencent/tme/live/y0/b;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/tencent/tme/live/y0/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sput-object v0, Lcom/tencent/tme/live/o2/a;->d:Lcom/tencent/tme/live/o2/a;

    .line 13
    const-class v2, Lcom/tencent/tme/live/v0/b;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 14
    :try_start_3
    sget-object v3, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;

    if-nez v3, :cond_2

    new-instance v3, Lcom/tencent/tme/live/v0/b;

    invoke-direct {v3}, Lcom/tencent/tme/live/v0/b;-><init>()V

    sput-object v3, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;

    :cond_2
    sget-object v3, Lcom/tencent/tme/live/v0/b;->d:Lcom/tencent/tme/live/v0/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v2

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v3, Lcom/tencent/tme/live/v0/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    :cond_3
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tme/live/c/c;->b()V

    invoke-static {}, Lcom/tencent/tme/live/b1/f;->b()Lcom/tencent/tme/live/b1/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 18
    :try_start_5
    invoke-static {}, Lcom/tencent/tme/live/e0/d;->c()Lcom/tencent/tme/live/e0/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tme/live/e0/d;->b()V

    sput-object v0, Lcom/tencent/tme/live/b1/f;->b:Lcom/tencent/tme/live/b1/f;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_6
    const-string v3, "ImageLoaderUitl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageLoaderUitl unInit error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v3, v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_2
    const-class v2, Lcom/tencent/tme/live/i/g;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 21
    :try_start_7
    sget-object v3, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;

    if-nez v3, :cond_4

    new-instance v3, Lcom/tencent/tme/live/i/g;

    invoke-direct {v3}, Lcom/tencent/tme/live/i/g;-><init>()V

    sput-object v3, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;

    :cond_4
    sget-object v3, Lcom/tencent/tme/live/i/g;->e:Lcom/tencent/tme/live/i/g;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v2

    .line 22
    invoke-virtual {v3}, Lcom/tencent/tme/live/i/g;->e()V

    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tme/live/e/f;->f()V

    const-class v2, Lcom/tencent/tme/live/b1/q;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 23
    :try_start_9
    sget-object v3, Lcom/tencent/tme/live/b1/q;->b:Lcom/tencent/tme/live/b1/q;

    if-nez v3, :cond_5

    new-instance v3, Lcom/tencent/tme/live/b1/q;

    invoke-direct {v3}, Lcom/tencent/tme/live/b1/q;-><init>()V

    sput-object v3, Lcom/tencent/tme/live/b1/q;->b:Lcom/tencent/tme/live/b1/q;

    :cond_5
    sget-object v3, Lcom/tencent/tme/live/b1/q;->b:Lcom/tencent/tme/live/b1/q;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v2

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 25
    :try_start_b
    iget-object v2, v3, Lcom/tencent/tme/live/b1/q;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_6
    sput-object v0, Lcom/tencent/tme/live/b1/q;->b:Lcom/tencent/tme/live/b1/q;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_c
    const-string v3, "ThreadPoolManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unInit error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v3, v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception v2

    .line 27
    const-string v3, "releaseOther error : "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Commponentinitializer"

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_7
    :goto_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a:Ljava/lang/String;

    const-string v2, "base onDestroyed is called:"

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDestroy"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->c:Lcom/tencent/tme/live/o2/c;

    const-string v1, "liveSdkExit"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/x0/a;->b(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onNewIntent"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPause"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRestart"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRestoreInstanceState"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onResume"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onSaveInstanceState"

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStart"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStop"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/x2/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/tencent/tme/live/v0/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "avoid calling setRequestedOrientation when Oreo."

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
